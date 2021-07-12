#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "setting up pyenv for nvim plugins (deoplete)"
pyenv install 2.7.11
pyenv install 3.4.4

