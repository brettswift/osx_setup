#!/bin/bash

set -e
set -x

echo "setup brew and packages"

`./brew_and_packages.sh`
#`./rbenv.sh`
`./homesick.sh`
