#!/usr/bin/env bash
#------------------------------------------------------------------------------
# This script sets up aliases to simplify development with Git.
#
#------------------------------------------------------------------------------
echo "configuring git aliases..."

## shortcut for git config
gconf="git config --global"

## Usage git default-branch <remote>
##
## Returns the name of the default branch, e.g., develop, master, main or other
##
## Example: git default-branch origin
${gconf} alias.default-branch "!bash -c \"git remote show \$1 | awk '/HEAD branch/ {print $NF}'\""

## Usage: git delete-tag <tag>
##
## Removes a tag both locally and on the remote (origin)
##
## Example: git delete-tag 3.9.260
${gconf} alias.delete-tag "!bash -c \"git tag -d \$1 && git push origin --delete \$1\""

## Usage: git delete-branch <branch>
##
## Removes a branch both locally and on the remote (origin)
#
## Example: git delete-branch foo
${gconf} alias.delete-branch "!bash -c \"git branch -d \$1 && git push origin --delete \$1\""

## Usage: git make-patch <from-tag> <patch-file>
##
## Creates a patch of all the commits after the given tag to the
## HEAD of the current branch. The patch is saved in the supplied
## patch file.
##
## Example: git make-patch 3.3.123 ~/update.patch
${gconf} alias.make-patch "!bash -c \"git format-patch \$1 --stdout > \$2\""

## Usage: git apply-patch <patch-file>
##
## Applies the given patch to the current branch
${gconf} alias.apply-patch "!bash -c \"git apply --check \$1 && git am --signoff < \$1\""

## Usage: git hall-of-fame
##
## Lists all authors ranked by number of commits
${gconf} alias.hall-of-fame "shortlog -sn --no-merges"

## Usage: git unstage <file>
##
## Unstages the given file.
${gconf} alias.unstage "reset HEAD --"

## Usage:
##    git incoming <branch>
##    git outgoing <branch>
##
## Lists incoming/outgoing commits from the current branch to svn/trunk.
${gconf} alias.incoming "!bash -c \"git fetch origin && git log --pretty=format:'%C(bold)%h%Creset %s %C(ul)(%an)%Creset' HEAD..origin/$1\""
${gconf} alias.outgoing "!bash -c \"git fetch origin && git log --pretty=format:'%C(bold)%h%Creset %s %C(ul)(%an)%Creset' origin/$1..HEAD\""

## Usage: git history
##
## Displays the history on the current branch
${gconf} alias.history "log --decorate"

## Usage: git summary
##
## Displays the history graph of all the branches
${gconf} alias.summary "log --graph --full-history --all --pretty=format:'%C(bold normal)%h%Creset %ad %C(bold normal)%s%Creset %C(reverse normal)%d%Creset %C(bold normal)<%an>%Creset' --date=short"

## Usage: git show-config
##
## Displays the git configuration settings
${gconf} alias.show-config "!bash -c \"git config --list\""

## Usage: git show-aliases
##
## Displays the current set of git aliases.
${gconf} alias.show-aliases "!bash -c \"git config --list | grep alias | sort\""

## Usage:: git prepush
##
## Provides a snapshot of the changes to be pushed
${gconf} alias.prepush "log --graph --stat origin/master.."

## Usage: git undo
##
## An alias to undo the last `git commit`, but leave
## the unstaged changes in the file-system.
${gconf} alias.undo "!bash -c \"git reset HEAD~\""

## Usage: git squash-merge <branch-name>
##
## Merges the branch with the given name into the current branch,
## typically, master using a squash-merge. All commits in the
## branch <branch-name> are squashed to a single commit.
##
## Note: the branch must be local. To merge a remote branch,
## a `git svn-checkout <branch-name>` must be issued first.
##
## Note: the merge is local, `git svnpush` must be issued to
## push the merge in to the remote svn server.
${gconf} alias.squash-merge "!bash -c \"git merge --squash \$1\""

## Usage: git ff-merge <branch-name>
##
## Does a fast-forward merge of the given branch into
## the current branch, typically master. All commits in
## branch <branch-name> are appended/played on top of
## master.
##
## A precondition for a ffwd-merge is that a linear
## commit history is maintained as depicted in the figure
## below:
##
##			  D---E---F <branch-name>
##			 /
##  A---B---C <master>
##
## In order to maintain the topic branch in this state,
## `git rebase master` must be issued before the
## `git ffwd-merge <branch-name>`.
${gconf} alias.ff-merge "!bash -c \"git merge --ff-only \$1\""

## Usage: git default-branch
##
## Returns the default, i.e., development branch that gets checked out when cloning from origin.
${gconf} alias.default-branch "!bash -c \"git remote show origin | grep 'HEAD branch' | cut -d' ' -f5\""

## Usage: git diff-stash [N]
##
## Diffs HEAD with the Nth entry of changes that was stashed
${gconf} alias.diff-stash "!bash -c \"git difftool -d HEAD stash@{\$1}\""

## Usage: git drop-stash [N]
##
## Drops the Nth entry from the stash
${gconf} alias.drop-stash "!bash -c \"git stash drop stash@{\$1}\""

