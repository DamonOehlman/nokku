# nokku

This is a node application container that is similar to and inspired by
[dokku](https://github.com/progrium/dokku). The primary rationale for
creating nokku is that I had a couple of OpenVZ containers available to
me, which is an environment in which [docker](http://docker.io) cannot
be used (AFAIK).  So nokku was born.

## Installation

The installation process is fairly simple, and is outlined below.  The process is designed to be compatible with both Ubuntu 12.04 and 14.04 and should work in any environment, although it is best suited to a freshly installed machine.

First download the bootstrap script to the machine:

```
wget https://raw.github.com/DamonOehlman/nokku/master/nokku-bootstrap.sh
```

Then, make the script executable and run it.  You should probably eyeball the script quickly to make sure it all looks ok before running it on your machine (given you are going to run it with root permissions and all).

```
chmod a+x ./nokku-bootstrap.sh
sudo ./nokku-bootstrap.sh
```

