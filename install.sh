#!/bin/bash
# this script installs plugin-manager, a simple vim plugin manager

mkdir -p ~/.vim/plugins # create the plugins directory recursively if not existing
mkdir -p ~/.vim/doc

curl -s https://gitlab.sokoll.com/moritz/vim-plugin-manager/-/raw/master/plugin-manager.vim > ~/.vim/plugins/plugin-manager.vim
curl -s
https://gitlab.sokoll.com/moritz/vim-plugin-manager/-/raw/master/plugin-manager.txt > ~/.vim/doc/plugin-manager.txt
echo 'plugin-manager has been installed!'
echo 'its not active yet.'
echo 'to activate it follow the readme <https://gitlab.sokoll.com/moritz/vim-plugin-manager>'
echo 'plugin-manager has installed a help page. Inside of vim use: `:helptags ~/.vim/doc` to load it'
