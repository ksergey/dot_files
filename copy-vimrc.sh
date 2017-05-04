#!/bin/sh

rm -rf $HOME/.vim*
cp -r .vim $HOME
vim +PlugInstall! +qa
