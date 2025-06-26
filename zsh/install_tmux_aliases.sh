#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)

CURRENT_DIR=`pwd`
cd $HOME
echo "workding directory${bold}[$HOME]${reset}"

echo "$bold[INFO]$reset: configuring tmux-aliases..."
TMUX_ALIASES_FILE="$HOME/.dotconfig/tmux/tmux-aliases.sh"
ZSHRC_FILE="$HOME/.zshrc"

echo ""                          >> $ZSHRC_FILE
echo "## [.dotconfig]"           >> $ZSHRC_FILE
echo "## setup tmux-aliases"     >> $ZSHRC_FILE
echo "source $TMUX_ALIASES_FILE" >> $ZSHRC_FILE
source ~/.zshrc
