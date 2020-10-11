#!/bin/bash

apt update -y && apt upgrade -y

# i3 related
apt install i3 compton feh -y

# General
apt install git nodejs npm vim ranger docker.io docker-compose cura vlc -y

mkdir ~/.npm-global
npm config set prefix '~/npm-global'

# Yep, I can copy the file from the repository..
echo '' >> ~/.profile
echo '# set PATH so it includes node global modules' >> ~/.profile
echo 'if [ -d "$HOME/.npm-global/bin"]; then' >> ~/.profile
echo '	PATH="$HOME/.npm-global/bin:$PATH' >> ~/.profile
echo 'fi' >> ~/.profile

source ~/.profile

npm install -g yarn


# Test
#echo ${cat .bashrc} >> ~/.bashrc
