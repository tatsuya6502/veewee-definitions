#!/bin/bash

# Requires
#   ruby.sh
#   aur.sh

yes | packer -S --noconfirm --noedit omnibus-chef-git
