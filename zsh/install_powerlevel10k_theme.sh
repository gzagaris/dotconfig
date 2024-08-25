#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)

CURRENT_DIR=`pwd`
cd $HOME
echo "workding directory$bold[$HOME]$reset"

echo "$bold[INFO]$reset: cloning powerlevel10k zsh theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k

echo "$bold[INFO]$reset: seed .zshrc"
echo "source ~/.powerlevel10k/powerlevel10k.zsh-theme"" >> ~/.zshrc


