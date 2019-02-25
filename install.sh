#!/bin/bash

touch ~/.bash_profile
echo ". ~/config/.bash_profile" >> ~/.bash_profile

touch ~/.vimrc
echo "source ~/config/.vimrc" >> ~/.vimrc

git config --global include.path "~/config/.gitconfig"
