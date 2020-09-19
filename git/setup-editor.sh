#!/usr/bin/env bash

##======================================================
#
# This script is used to set the editor used to
# compose git commit messages.
#
##======================================================

# Project configuration instructions: NONE


current_editor="$(git config --get core.editor)"

if test -n "$current_editor"; then
    echo "You are currently using: $current_editor"
fi

read -ep 'Would you like to setup an editor ? [Y/n] ' yes &&
if test "$yes" = "y" -o "$yes" = "Y"; then
    read -ep 'Select an editor, e.g., vim, emacs -nw, etc.: ' editor
    echo "Setting editor to: $editor"
    git config --global --replace-all core.editor "$editor"
fi

