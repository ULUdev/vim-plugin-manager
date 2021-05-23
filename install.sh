#!/bin/bash
# this script installs plugin-manager, a simple vim plugin manager

mkdir -p ~/.vim/plugins # create the plugins directory recursively if not existing

curl -s https://gitlab.sokoll.com/moritz/vim-plugin-manager/-/raw/master/plugin-manager.vim > ~/.vim/plugins/plugin-manager.vim # download the manager file itself
echo 'plugin-manager has been installed!'
echo 'its not active yet.'
echo 'to activate it follow the readme <https://gitlab.sokoll.com/moritz/vim-plugin-manager>'
