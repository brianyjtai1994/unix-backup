#!/bin/bash

sudo clear
cd ~

brew update && brew upgrade && brew cleanup

python3.11 -m pip install --upgrade pip
python3.11 -m pip install --upgrade numpy
python3.11 -m pip install --upgrade scipy
python3.11 -m pip install --upgrade matplotlib
python3.11 -m pip install --upgrade PyQt5
python3.11 -m pip install --upgrade jupyter notebook

sudo tlmgr update --all --reinstall-forcibly-removed

brew upgrade --fetch-HEAD zig
