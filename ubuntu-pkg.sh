#!/bin/bash

# =========================================================================================================== #

sudo apt update
sudo apt upgrade
sudo apt autoremove

# remove built-in vi << vim-tiny
# install full version of vim
sudo apt remove -y vim-tiny
sudo apt update
sudo apt install -y vim

# Make exFAT Portable Disk can be read
sudo add-apt-repository universe
sudo apt update
sudo apt install exfat-fuse exfat-utils

# =========================================================================================================== #

sudo apt-get update
sudo apt-get upgrade

# install "boshiamy" input method
sudo apt-get -y install fcitx fcitx-m17n
sudo apt-get -y install fcitx-table-boshiamy

# install "Sublime Text 3"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add
sudo apt-get -y install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get -y install sublime-text

# install Python evironment for Tensorflow-GPU
sudo apt-get -y install build-essential cmake unzip pkg-config
sudo apt-get -y install gcc-6 g++-6
sudo apt-get -y install screen
sudo apt-get -y install libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
sudo apt-get -y install libopenblas-dev libatlas-base-dev liblapack-dev gfortran
sudo apt-get -y install libhdf5-serial-dev
sudo apt-get -y install python3-dev python3-tk python-imaging-tk
sudo apt-get -y install libgtk-3-dev

# install "Texlive" and "Texmaker"
sudo apt-get install texlive-full
sudo apt-get install texmaker
