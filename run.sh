#!/bin/bash

set -e
set -x

echo "setup brew and packages"

`./brew_and_packages.sh`
#`./rbenv.sh`
# deprecated, using bretswift/osx_dotfiles instead `./homesick.sh`
