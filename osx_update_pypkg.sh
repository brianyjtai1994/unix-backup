#!/bin/bash

clear

cd ~

sudo -H pip3 install -U pip
sudo -H pip3 install -U numpy
sudo -H pip3 install -U scipy
sudo -H pip3 install -U Pygments
sudo -H pip3 install -U matplotlib
sudo -H pip3 install -U PyQt5
sudo -H pip3 install -U requests-html
sudo -H pip3 install -U jupyter notebook
sudo -H pip3 install -U opencc-python-reimplemented
sudo -H pip3 install git+https://github.com/brianyjtai1994/teralab.git@v0.1.3

clear
