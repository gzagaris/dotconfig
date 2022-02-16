#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)
green=$(tput setaf2)
check="$green o $reset"

BASH_ALIASES="$HOME/.dotconfig/bash/ssh_aliases.sh"
BASH_RC_FILE="$HOME/.bashrc"
BASH_PROFILE_FILE="$HOME/.profile"
TARGET_FD=""

echo "$bold[setup bash aliases]$reset"
if test -f "$BASH_PROFILE_FILE"; then
  TARGET_FD="$BASH_PROFILE_FILE"
elif test -f "$BASH_RC_FILE"; then
  TARGET_FD="$BASH_RC_FILE"
fi

echo ""                      >> $TARGET_FD
echo "## [.dotconfig]"       >> $TARGET_FD
echo "## setup ssh aliases" >> $TARGET_FD
echo "source $BASH_ALIASES" >> $TARGET_FD
echo "$check updated settings in [$TARGET_FD]..."
