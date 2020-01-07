#!/bin/bash

if test -e ~/.vimrc
then
    sudo rm ~/.vimrc
fi

sudo cp -R ~/Github/unix-backup/vimrc_backup.txt ~/.vimrc

echo "Done!"
