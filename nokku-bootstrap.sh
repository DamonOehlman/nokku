#!/usr/bin/env bash

# set exit on error and tracing
# see https://gist.github.com/wolfeidau/6761104#file-pi-build-deb-sh-L3-L4
set -e
set -o errtrace

# detect the osversion
OS_VERSION=$(lsb_release --release | sed -E s/[^0-9\.]//g)

# ensure we have up-to-date packages
apt-get update

# if we don't have the `add-apt-repository` command install it now
hash apt-add-repository 2> /dev/null || apt-get -y install python-software-properties
