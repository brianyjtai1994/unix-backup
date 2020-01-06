#!/bin/bash

# Check/Install VundleVim
if test -e ~/.vim/bundle/Vundle.vim
then
    cd ~/.vim/bundle/Vundle.vim
    git fetch && git pull
    cd ~
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi


# Check ~/.vim/colors exist
if test -d ~/.vim/colors
then
    echo "~/.vim/colors exist"
else
    mkdir -p  ~/.vim/colors
fi

# Check ~/.vim/bundle exist
if test -d ~/.vim/bundle
then
    echo "~/.vim/bundle exist"
else
    mkdir -p ~/.vim/bundle
fi

# Bundle vim-colors-solarized
if test -d ~/.vim/bundle/vim-colors-solarized
then
    :
else
    git clone git://github.com/altercation/vim-colors-solarized.git ~/vim-colors-solarized
    mv ~/vim-colors-solarized ~/.vim/bundle/
fi

# Intall All Plugins
vim +PluginInstall +qall
