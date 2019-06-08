#!/bin/bash


echo "Configuring ruby and rbenv so homesick can install"
# https://gist.github.com/DirtyF/5d2bde5c682101b7b5d90708ad333bf3
curl https://gist.githubusercontent.com/DirtyF/5d2bde5c682101b7b5d90708ad333bf3/raw/fbc736fa1b50bd637929a315e6803df306c8bc8e/setup-rbenv.sh | bash

echo "setting up homesick dotfile management"

mkdir -p ~/.homesick

gem install homesick

homesick clone git@bitbucket.org:bswift/dotfiles.git
homesick link dotfiles --force
homesick pull dotfiles
