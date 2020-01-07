#!/bin/bash

# Install `dconf` command 
sudo apt-get install dconf-cli

# Update ~/.bashrc
echo "
# Solarized Color Theme dircolors setting
if [ -f ~/.dir_colors/dircolors ]
    then eval `dircolors ~/.dir_colors/dircolors`
fi" >> ~/.bashrc

source ~/.bashrc

# Install gnome-term-color-theme-solarized-repo
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git ~/.gnome-terminal-colors-solarized
cd ~/.gnome-terminal-colors-solarized
./install.sh
