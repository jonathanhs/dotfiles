# VERSION 0.1

ARG VERSION
FROM ubuntu:$VERSION
LABEL maintainer="jonathan.hadisuryo@gmail.com"

# install basic packages
RUN apt-get update && apt-get install -y git tmux vim

# add new robot
RUN useradd -ms /bin/bash robot
USER robot

# set new work environment
ENV HOME /home/robot
WORKDIR $HOME

# copy all dotfiles and install vim plugins
COPY --chown=robot:robot .vim $HOME/.vim
COPY --chown=robot:robot .vimrc $HOME
COPY --chown=robot:robot .tmux.conf $HOME
COPY --chown=robot:robot .gitconfig $HOME
COPY --chown=robot:robot .gitignore_global $HOME
COPY --chown=robot:robot .bashrc $HOME/.bashrc.copy

RUN echo "\nsource /etc/bash_completion.d/git-prompt" >> $HOME/.bashrc \
    && cat $HOME/.bashrc.copy >> $HOME/.bashrc \
    && rm $HOME/.bashrc.copy
