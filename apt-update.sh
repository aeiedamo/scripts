#!/usr/bin/env bash

# Check warp-cli status
status="$(warp-cli status | grep -o "Connected\|Disconnected")"

# Connect to warp-cli if Disconnected
if [[ "$status" = "Disconnected" ]]; then
	warp-cli connect
	sleep 3
fi

# Update apt
apt update

# Full Upgrade packages
apt full-upgrade

# auto remove non-needed packages
apt autoremove

# Reset status of warp-cli
if [[ "$status" = "Disconnected" ]]; then
	warp-cli disconnect
fi
