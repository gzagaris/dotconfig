#!/usr/bin/env bash

##======================================================
#
# This script is used to setup SSH keys.
#
##======================================================


if test -f "$HOME/.ssh/id_rsa"; then
  echo "Existing SSH key found in[$HOME/.ssh/id_rsa]"
fi

read -ep 'Would you like to setup a new SSH key ? [Y/n] ' yes &&
if test "$yes" = "y" -o "$yes" = "Y"; then
  read -ep 'Enter email address to associate with the new SSH key: ' email &&
  ssh-keygen -t rsa -b 4096 -C	"$email"
fi

