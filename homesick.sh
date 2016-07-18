#!/bin/bash

echo "setting up homesick dotfile management"

mkdir -p ~/.homesick

gem install homesick

homesick clone git@bitbucket.org:bswift/dotfiles.git
homesick link dotfiles --force
homesick pull dotfiles
