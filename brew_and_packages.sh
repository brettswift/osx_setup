#!/bin/bash

set -x
set -e

echo "install brew and packages"

if ! hash brew 2>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "brew already installed - not installing"
fi


echo "Setup brew casks"
brew tap caskroom/cask
#brew tap homebrew/completions

#brew install brew-cask

echo "Java may require your password"
#brew cask install java

echo "install packages"
brew install fswatch
#brew install gradle
brew install libyaml
brew install asciinema
brew install graphviz
brew install lighttpd
brew install autoconf
#brew install heroku-toolbelt
brew install macvim
brew install sqlite
brew install automake
brew install hub
brew install gist
brew install git
brew install nmap
brew install wget
brew install cmake
brew install git-extras
brew install node
brew install gitup
brew install openssl
#brew install glew
brew install dnsmasq
#brew install docker
#brew install python
brew install gnu-tar
brew install readline
brew install findutils
brew install go
brew install freetype
brew install gource
brew install libtool
#brew install ruby-build
brew install bat 

echo "finished packages,  begin installing casks"

brew cask install kdiff3
#brew cask install caffeine
brew cask install dropbox
brew cask install 1password
brew cask install alfred

brew cask install iterm2
brew cask install macvim
