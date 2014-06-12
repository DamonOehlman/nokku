#!/usr/bin/env bash

# set exit on error and tracing
# see https://gist.github.com/wolfeidau/6761104#file-pi-build-deb-sh-L3-L4
set -e
set -o errtrace

# detect the osversion
OS_VERSION=`lsb_release -sr`
INSTALL="apt-get install -y"

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

# install node and nginx
hash node 2> /dev/null || installNode
hash nginx 2> /dev/null || installNginx
