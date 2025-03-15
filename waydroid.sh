#!/usr/bin/bash

# Mount waydroid directory to Android
mount --bind /home/alaeldin/.local/share/waydroid/data/media/0/ /home/alaeldin/Android/
# Modify owner of directory
chmod -R 777 /home/alaeldin/Android/
