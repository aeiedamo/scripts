#!/usr/bin/env bash

# This script downloads files using wget
# First check if warp-cli is connected

status=$(warp-cli status | grep -o "Connected\|Disconnected")

if [[ $status = "Disconnected" ]]; then
	warp-cli connect
	sleep 3
fi
# Start download
wget -4 --content-disposition "$@"

# Stop warp-cli if it was connected only for this session
if [[ $status = "Disconnected" ]]; then
	warp-cli disconnect
fi
