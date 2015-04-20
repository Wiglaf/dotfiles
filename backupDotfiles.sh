#!/bin/bash
###############################
# backupDotfiles.sh           #
# this script saves copies of #
#config files into ~/dotfiles #
###############################

dir=~/git/repos/dotfiles

echo "Copying config files into $dir"

cp -ruvi ~/.i3/ ~/git/repos/dotfiles/i3/
cp -uvi ~/.vimrc ~/git/repos/dotfiles/vimrc
cp -uvi ~/.bashrc ~/git/repos/dotfiles/bashrc
cp -uvi ~/.Xresources ~/git/repos/dotfiles/Xresources
cp -uvi ~/.xinitrc ~/git/repos/dotfiles/xinitrc
cp -uvi ~/.config/compton.conf ~/git/repos/dotfiles/config/compton.conf

