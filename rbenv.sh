#!/bin/bash

echo "install and configure rbenv"

brew install rbenv
# rbenv uninstall 2.1.8
rbenv install 2.1.10 -s
rbenv install 2.2.5 -s

export PATH="$HOME/.rbenv/bin:$PATH"; rbenv global 2.2.5;  #this will be persisted by dotfiles when they run
