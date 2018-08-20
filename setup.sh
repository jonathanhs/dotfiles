#!/bin/bash

sudo apt-get update
sudo apt-get install -y git tmux vim

# copy and merge all dotfiles
cp -r .vim* ~
cp .tmux.conf ~
cp .gitconfig ~
cp .gitignore_global ~

if ! grep -r "add this block at the end of the file" ~/.bashrc; then
    cat .bashrc >> ~/.bashrc
fi
