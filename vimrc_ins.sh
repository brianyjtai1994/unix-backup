#!/bin/bash

if test -e ~/.vimrc
then
    sudo rm ~/.vimrc
fi

sudo cp -R ~/Github/unix-backup/vimrc_backup.txt ~/.vimrc

# Intall All Plugins
vim +PluginInstall +qall  

echo "Done!"
