# VERSION 0.1

ARG VERSION
FROM ubuntu:$VERSION
LABEL maintainer="jonathan.hadisuryo@gmail.com"

# install basic packages
RUN apt-get update && apt-get install -y git software-properties-common tmux vim \
    && apt-get -y autoremove && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# set new work environment
ENV HOME /root
WORKDIR $HOME

# copy all dotfiles
COPY .vim $HOME/.vim
COPY .vimrc $HOME
COPY .tmux.conf $HOME
COPY .gitconfig $HOME
COPY .gitignore_global $HOME
COPY .bashrc $HOME/.bashrc.copy

RUN echo "\nsource /etc/bash_completion.d/git-prompt" >> $HOME/.bashrc \
    && cat $HOME/.bashrc.copy >> $HOME/.bashrc \
    && rm $HOME/.bashrc.copy
