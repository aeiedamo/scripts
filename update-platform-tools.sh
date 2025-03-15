#!/usr/bin/bash

# Update Google's platform tools
dl 'https://dl.google.com/android/repository/platform-tools-latest-linux.zip'

# unzip downloaded file
unzip 'platform-tools-latest-linux.zip'

# move directory to /opt/
mv -f ./platform-tools /opt/google/

# delete file
rm ./platform-tools-latest-linux.zip
