#!/usr/bin/env bash

mkdir -p /mnt/hdd0/mfs
mkdir -p /mnt/hdd1/mfs
mkdir -p /mnt/hdd2/mfs
mkdir -p /mnt/hdd3/mfs
mkdir -p /mnt/hdd4/mfs
# Set correct owner
chown -R mfs:mfs /mnt/hdd0 /mnt/hdd0/mfs /var/lib/mfs /mnt/hdd1 /mnt/hdd1/mfs /mnt/hdd2 /mnt/hdd2/mfs /mnt/hdd3 /mnt/hdd3/mfs /mnt/hdd4 /mnt/hdd4/mfs

exec mfschunkserver -f
