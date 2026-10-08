#!/bin/bash

set -e
set -x

if ! hash brew 2>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv zsh)"

brew install gh
brew install neovim
brew install fzf
brew install ripgrep
brew install jq
brew install wget
brew install bat
brew install tree
brew install pyenv pyenv-virtualenv
brew install go
brew install awscli
brew install aws-sam-cli

brew install --cask iterm2
brew install --cask spotify
brew install --cask 1password
brew install --cask raycast
