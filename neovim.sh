#!/usr/bin/env bash

set -e
set -x

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
eval "$(pyenv init -)"
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

py=$(pyenv install --list | grep -E '^\s*3\.13\.[0-9]+$' | tail -1 | tr -d ' ')
pyenv install -s "$py"
PYENV_VERSION="$py" pyenv virtualenv -f "$py" neovim3
"$HOME/.pyenv/versions/neovim3/bin/pip" install pynvim

nvim --headless +PlugInstall +qall
