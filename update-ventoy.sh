#!/usr/bin/env bash

# Always make sure you're in main root directory
cd /root/

# get the latest tag
latest=$(curl "https://api.github.com/repos/ventoy/Ventoy/tags" | jq -r '.[0].name' | cut -c 2-)

# Download fastfetch package
dl "https://github.com/ventoy/Ventoy/releases/download/v$latest/ventoy-$latest-linux.tar.gz"

# extract the tarball
tar -xf "/root/ventoy-$latest-linux.tar.gz" --one-top-level
