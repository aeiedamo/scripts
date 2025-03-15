#!/usr/bin/env bash

# Always make sure you're in main root directory
cd /root/

# get the latest tag
latest=$(curl "https://api.github.com/repos/fastfetch-cli/fastfetch/tags" | jq -r '.[0].name')

# Download fastfetch package
dl "https://github.com/fastfetch-cli/fastfetch/releases/download/$latest/fastfetch-linux-amd64.deb"

# Install fastfetch package
apt install ./fastfetch-linux-amd64.deb

# shred the package
shred -un1 ./fastfetch-linux-amd64.deb
