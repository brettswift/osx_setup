#!/usr/bin/env bash

set -e
set -x

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

venv="$HOME/.local/share/nvim/venv"
"$(brew --prefix)/bin/python3" -m venv "$venv"
"$venv/bin/pip" install pynvim

nvim --headless +PlugInstall +qall
