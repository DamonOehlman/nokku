__NOTE:__ I wouldn't recommend trying any of this yet...

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
