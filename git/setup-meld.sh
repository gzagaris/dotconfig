#!/usr/bin/env bash
##======================================================
#
# This script is used to set meld as the default
# mergetool for git.
#
##======================================================

# Project configuration instructions: NONE
reset=$(tput sgr0)
bold=$(tput bold)

current_merge_tool="$(git config --get merge.tool)"

echo "$bold === Git Meld Difftool Settings === $reset"
if test -n "$current_merge_tool"; then
    if [[ "$current_merge_tool" == "meld" ]]; then
       echo "You are currently using: $current_merge_tool"
       exit 0
    fi
    echo "You are currently using: $current_merge_tool"
fi

read -ep 'Would you like to setup meld as your default mergetool? [Y/n] ' yes &&
if test "$yes" = "y" -o "$yes" = "Y"; then
    git config --global merge.tool meld
    git config --global diff.tool meld
fi

