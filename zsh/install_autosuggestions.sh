#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)

CURRENT_DIR=`pwd`
cd $HOME
echo "workding directory$bold[$HOME]$reset"

echo "$bold[INFO]$reset: cloning zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

ZSHRC_FILE="$HOME/.zshrc"

echo ""                             >> $ZSHRC_FILE
echo "## [.dotconfig]"              >> $ZSHRC_FILE
echo "## setup zsh-autosuggestions" >> $ZSHRC_FILE
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $ZSHRC_FILE
source ~/.zshrc
