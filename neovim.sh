#!/usr/bin/env bash

# vim plug, for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo "######################################################"
echo "Follow these instructions: "
echo "    https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim   "
