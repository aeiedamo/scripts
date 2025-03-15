#!/usr/bin/bash

echo "79" >/sys/class/power_supply/BAT0/charge_start_threshold
echo "80" >/sys/class/power_supply/BAT0/charge_stop_threshold
echo "79" >/sys/class/power_supply/BAT1/charge_start_threshold
echo "80" >/sys/class/power_supply/BAT1/charge_stop_threshold
