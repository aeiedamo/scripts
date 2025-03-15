#!/usr/bin/bash
set -e

latest=$(dpkg-query -W -f='${Version}\n' linux-image-amd64 | cut -d'-' -f1)

if ! echo "$1" | grep -q "$latest"; then
	exit 0
fi

cmdline=$(cat /etc/kernel/cmdline)

echo "Updating EFISTUB boot entry for kernel $1"

efibootmgr -q -b 2 -B

efibootmgr -q -c -d /dev/nvme0n1 -p 1 -L "Debian" -l "debian/$1/linux" -u "initrd=debian\\$1\\initrd.img-$1 $cmdline"
