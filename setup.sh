#!/bin/bash

# Set Script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Download VIM Plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Download tpm for tmux
mkdir ~/.tmux
mkdir ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Set links
ln ${DIR}/.vimrc ~/.vimrc
ln ${DIR}/.tmux.conf ~/.tmux.conf
mkdir ~/.config
mkdir ~/.config/termite
ln ${DIR}/.config/termite/config ~/.config/termite/config

# Install vim plugins
vim +'PlugInstall --sync' +qa

# Install tmux plugins
# start a server but don't attach to it
tmux start-server
# create a new session but don't attach to it either
tmux new-session -d
# install the plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh
# killing the server is not required, I guess
tmux kill-server

