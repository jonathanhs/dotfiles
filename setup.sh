#!/bin/bash

sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y tmux

# copy and merge all dotfiles
cp -r .vim* ~
cp .tmux.conf ~
cp .gitconfig ~
cp .gitignore_global ~

if ! grep -r "add this block at the end of the file" ~/.bashrc; then
    cat .bashrc >> ~/.bashrc
fi

# install vim plugins
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git
cd ~
vim +PluginInstall +qall
