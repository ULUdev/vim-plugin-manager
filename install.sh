#!/bin/bash
# this script installs plugin-manager, a simple vim plugin manager
mkdir -p ~/.vim/plugins # create the plugins directory
curl https://gitlab.sokoll.com/moritz/vim-plugin-manager/-/raw/master/plugin-manager.vim > ~/.vim/plugins/plugin-manager.vim
echo 'plugin-manager has been installed!'
echo 'its not active yet.'
echo 'to actiavte it follow the readme <https://gitlab.sokoll.com/moritz/vim-plugin-manager>'
