#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)

CURRENT_DIR=`pwd`
cd $HOME
echo "workding directory$bold[$HOME]$reset"

echo "$bold[INFO]$reset: cloning zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

ZSHRC_FILE="$HOME/.zshrc"

echo ""                             >> $ZSHRC_FILE
echo "## [.dotconfig]"              >> $ZSHRC_FILE
echo "## setup zsh-syntax-highlighting" >> $ZSHRC_FILE
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $ZSHRC_FILE
