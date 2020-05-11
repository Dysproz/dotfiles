#!/bin/bash

# Set Script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Download VIM Plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set links
ln ${DIR}/.vimrc ~/.vimrc
ln ${DIR}/.tmux.conf ~/.tmux.conf
mkdir ~/.config
mkdir ~/.config/termite
ln ${DIR}/.config/termite/config ~/.config/termite/config

