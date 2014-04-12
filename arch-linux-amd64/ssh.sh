#!/bin/bash

# Requires
#   pacman.sh

# Chroot into the new system and set up SSH access
arch-chroot /mnt <<ENDCHROOT
pacman -S --noconfirm openssh

# Make sure SSH is allowed
echo "sshd:	ALL" > /etc/hosts.allow

# And everything else isn't
echo "ALL:	ALL" > /etc/hosts.deny

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config

# Make sure sshd starts on boot
systemctl enable sshd.service
ENDCHROOT
