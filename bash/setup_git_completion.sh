#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)
green=$(tput setaf2)
check="$green o $reset"

BASH_GIT_COMPLETION="$HOME/.dotconfig/contrib/git-completion.bash"
BASH_RC_FILE="$HOME/.bashrc"
BASH_PROFILE_FILE="$HOME/.profile"
TARGET_FD=""

echo "$bold[Git tab-autocompletion in bash!]$reset"
if test -f "$BASH_PROFILE_FILE"; then
  TARGET_FD="$BASH_PROFILE_FILE"
elif test -f "$BASH_RC_FILE"; then
  TARGET_FD="$BASH_RC_FILE"
fi

echo ""                                        >> $TARGET_FD
echo "## [.dotconfig]"                         >> $TARGET_FD
echo "## setup git tab completion in bash"     >> $TARGET_FD
echo "source $BASH_GIT_COMPLETION"             >> $TARGET_FD
echo "$check updated settings in [$TARGET_FD]..."
