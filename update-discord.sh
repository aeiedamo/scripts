#!/usr/bin/env bash

# go to root's home directory
cd /root/

# Download discord package
wget --content-disposition 'https://discord.com/api/download?platform=linux&format=deb' -O ~/discord.deb

# Install the package
apt install ~/discord.deb -y

# Delete the package
shred -un1 ~/discord.deb
