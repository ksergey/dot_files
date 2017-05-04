#!/bin/bash

cp .dircolors $HOME/.dircolors
cp .inputrc $HOME/.inputrc
cp .tmux.conf $HOME/.tmux.conf
cp .gitconfig $HOME/.gitconfig

cp .bashrc $HOME/.bashrc
rm -rf $HOME/.bashrc.d && cp -r .bashrc.d $HOME/.bashrc.d

mkdir -p $HOME/.local/bin
