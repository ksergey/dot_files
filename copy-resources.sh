#!/bin/bash

cp .Xresources $HOME/.Xresources
cp .Xresources-rxvt $HOME/.Xresources-rxvt

cp .xprofile $HOME/.xprofile

mkdir -p $HOME/.local/wallpapers
cp -r .local/wallpapers/* $HOME/.local/wallpapers/

mkdir -p $HOME/.config
cp .config/locale.conf $HOME/.config/locale.conf
cp .config/user-dirs.dirs $HOME/.config/user-dirs.dirs
cp .config/user-dirs.conf $HOME/.config/user-dirs.conf

rm -rf $HOME/.config/mc && cp -r .config/mc $HOME/.config/mc
rm -rf $HOME/.config/termite && cp -r .config/termite $HOME/.config/termite
