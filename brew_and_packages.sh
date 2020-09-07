#!/bin/bash

set -x
set -e

echo "install brew and packages"

if ! hash brew 2>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "brew already installed - not installing"
fi


echo "Setup brew casks"
brew tap homebrew/cask
#brew tap homebrew/completions

#brew install brew-cask

echo "Java may require your password"
#brew cask install java

echo "install packages"
brew install libyaml
brew install asciinema
brew install graphviz
brew install lighttpd
brew install autoconf
brew install macvim
brew install automake
brew install hub
brew install gist
brew install git
brew install nmap
brew install wget
brew install cmake
brew install git-extras
brew install gitup
brew install openssl
brew install dnsmasq
#brew install docker
brew install gnu-tar
brew install readline
brew install findutils
brew install go
brew install freetype
brew install gource
brew install libtool
brew install bat 
brew install ranger

brew install pyenv pyenv-virtualenv

echo "finished packages,  begin installing casks"

brew cask install kdiff3
brew cask install dropbox
brew cask install 1password
brew cask install alfred

brew cask install iterm2

