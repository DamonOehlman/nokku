# nokku

This is a node application container that is similar to and inspired by
[dokku](https://github.com/progrium/dokku). The primary rationale for
creating nokku is that I had a couple of OpenVZ containers available to
me, which is an environment in which [docker](http://docker.io) cannot
be used (AFAIK).  So nokku was born.


[![NPM](https://nodei.co/npm/nokku.png)](https://nodei.co/npm/nokku/)

[![experimental](https://img.shields.io/badge/stability-experimental-red.svg)](https://github.com/badges/stability-badges) [![Build Status](https://img.shields.io/travis/DamonOehlman/nokku.svg?branch=master)](https://travis-ci.org/DamonOehlman/nokku) 

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


## License(s)

### MIT

Copyright (c) 2014 Damon Oehlman <damon.oehlman@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
