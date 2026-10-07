#!/bin/bash

set -e
set -x

cd "$(dirname "$0")"

./brew_and_packages.sh
./oh-my-zsh.sh
./dotfiles.sh
./nvm.sh
./neovim.sh
./osx.sh
