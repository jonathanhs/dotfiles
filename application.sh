#!/bin/bash

echo "------------------------------------------------------------------------"
echo "- caffeine indicator                                                   -"
echo "------------------------------------------------------------------------"
echo

sudo apt update
sudo apt install -y caffeine

echo
echo "------------------------------------------------------------------------"
echo "- cowsay                                                               -"
echo "------------------------------------------------------------------------"
echo

sudo apt-get update
sudo apt-get install -y cowsay

echo
echo "------------------------------------------------------------------------"
echo "- insomnia                                                             -"
echo "------------------------------------------------------------------------"
echo

wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

sudo apt-get update
sudo apt-get install -y insomnia

echo
echo "------------------------------------------------------------------------"
echo "- spotify                                                              -"
echo "------------------------------------------------------------------------"
echo

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \
    --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

echo "deb http://repository.spotify.com stable non-free" \
    | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update
sudo apt-get install -y spotify-client

echo
echo "------------------------------------------------------------------------"
echo "- steam locomotive                                                     -"
echo "------------------------------------------------------------------------"
echo

sudo apt-get update
sudo apt-get install -y sl

echo
echo "------------------------------------------------------------------------"
echo "- sublime text                                                         -"
echo "------------------------------------------------------------------------"
echo

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg \
    | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" \
    | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install -y sublime-text

echo
echo "------------------------------------------------------------------------"
echo "- synaptic                                                             -"
echo "------------------------------------------------------------------------"
echo

sudo apt update
sudo apt install -y synaptic

echo
echo "------------------------------------------------------------------------"
echo "- typora                                                               -"
echo "------------------------------------------------------------------------"
echo

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io/linux ./'

sudo apt-get update
sudo apt-get install -y typora

echo
echo "------------------------------------------------------------------------"
echo "- vlc                                                                  -"
echo "------------------------------------------------------------------------"
echo

sudo apt-get update
sudo apt-get install -y vlc

echo
echo "------------------------------------------------------------------------"
echo "- weather indicator                                                    -"
echo "------------------------------------------------------------------------"
echo

sudo add-apt-repository ppa:atareao/atareao

sudo apt update
sudo apt install -y my-weather-indicator

echo

cowsay -f ghostbusters.cow conglaturation!

echo
