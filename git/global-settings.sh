#!/usr/bin/env bash

##======================================================
#
# This script is used to setup global git user-settings
# across all Git projects.
#
##======================================================

## `git push` if given no other argument will push the
## current branch to a remote branch with the same name.
git config --global push.default current

## enable syntax highlighting of output from git commands.
git config --global color.ui true

## enable rebasing on `git pull`.
git config --global pull.rebase true

## enable ``rerere`` functionality for conflict resolution
## which allows to [re]use [re]corded [re]solution. Simplifies
## life when rebasing and resolving conflicts.
git config --global rerere.enabled true
