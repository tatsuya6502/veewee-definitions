#!/bin/bash

# Requires
#   pacman.sh

pacman -S nfs-utils
systemctl enable rpc-statd.service
