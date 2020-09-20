#!/usr/bin/env bash

bold=$(tput bold)
reset=$(tput sgr0)

CURRENT_DIR=`pwd`
cd $HOME
echo "workding directory$bold[$HOME]$reset"

echo -n "setting up symbolic link..."
ln -s .dotconfig/contrib/vimrc .vim_runtime
echo "$bold[DONE]$reset"

echo "installing..."
sh .vim_runtime/install_awesome_vimrc.sh
echo "$bold[DONE]$reset"

