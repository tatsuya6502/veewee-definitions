#!/bin/bash

# Requires
#   pacman.sh

pacman -S --noconfirm nfs-utils
systemctl enable rpc-statd.service
