#!/usr/bin/env bash

# set exit on error and tracing
# see https://gist.github.com/wolfeidau/6761104#file-pi-build-deb-sh-L3-L4
set -e
set -o errtrace

# initialise a default git user of dokku (strive for compatibility with dokku)
DEFAULT_GITUSER=dokku

# detect the osversion
OS_VERSION=`lsb_release -sr`
INSTALL="apt-get install -yq"
UPGRADE="apt-get upgrade -yq"

# urls
GITRECEIVE_URL=https://raw.github.com/progrium/gitreceive/master/gitreceive
GITRECEIVE_BIN=/usr/local/bin/gitreceive

function installGitReceive() {
  wget $GITRECEIVE_URL -O $GITRECEIVE_BIN
  chmod a+x $GITRECEIVE_BIN
  GITUSER=$DEFAULT_GITUSER $GITRECEIVE_BIN init
}

function installNode() {
  apt-add-repository -y ppa:chris-lea/node.js
  apt-get update
  $INSTALL nodejs
}

function installNginx() {
  apt-add-repository -y ppa:nginx/stable
  apt-get update
  $INSTALL nginx
}

# ensure we have up-to-date packages
apt-get update

# install required tools
hash apt-add-repository 2> /dev/null || $INSTALL python-software-properties
hash git 2> /dev/null || $INSTALL git
hash curl 2> /dev/null || $INSTALL curl

# install node and nginx
hash node 2> /dev/null || installNode
hash nginx 2> /dev/null || installNginx

# upgrade to bring things to the latest version if we have things installed
$UPGRADE

# install gitreceive
# https://github.com/progrium/gitreceive
hash gitreceive 2> /dev/null || installGitReceive


