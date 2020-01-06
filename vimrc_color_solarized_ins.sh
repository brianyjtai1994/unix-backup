#!/bin/bash

if test -d ~/.vim/colors
then
    echo "~/.vim/colors exist"
else
    mkdir -p  ~/.vim/colors
fi

if test -d ~/.vim-colors-solarized
then
    rm -rf ~/.vim-colors-solarized
    echo "~/.vim-colors-solarized removed"
fi

git clone https://github.com/altercation/vim-colors-solarized ~/.vim-colors-solarized

if test -e ~/.vim/colors/solarized.vim
then
    rm ~/.vim/colors/solarized.vim
fi

mv ~/.vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
rm -rf ~/.vim-colors-solarized
