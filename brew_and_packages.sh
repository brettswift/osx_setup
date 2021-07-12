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
brew install zlib
brew install bzip2
brew install libzip
brew install libiconv
# brew install ruby-build

brew install pyenv 
brew install pyenv-virtualenv

brew cask install kdiff3


brew install 1password
brew install alfred
# brew install vagrant-manager # under evaluation!s
brew install spotify
brew install bettertouchtool
brew install the-unarchiver
brew install day-o
brew install macdown

brew install iterm2
brew install macvim