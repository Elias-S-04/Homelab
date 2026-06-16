#!/bin/bash

echo "Updating server documentation..."

mkdir -p server/etc/docker
mkdir -p server/srv
mkdir -p server/system

# Storage structure
sudo tree -L 3 /srv > server/srv/tree.txt

# Docker configuration
sudo tree -L 2 /etc/docker > server/etc/docker/tree.txt

# Docker daemon configuration
cp /etc/docker/daemon.json server/etc/docker/daemon.json

# Disk usage
df -h > server/system/disk-usage.txt

# Mounted filesystems
mount > server/system/mounts.txt

# Block devices
lsblk -f > server/system/lsblk.txt

echo "Done."
