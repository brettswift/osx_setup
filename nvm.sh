#!/usr/bin/env bash

set -e
set -x

export NVM_DIR="$HOME/.nvm"

if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  tag=$(gh api repos/nvm-sh/nvm/releases/latest -q .tag_name)
  curl -fsSL "https://raw.githubusercontent.com/nvm-sh/nvm/$tag/install.sh" | PROFILE=/dev/null bash
fi

. "$NVM_DIR/nvm.sh"
nvm install --lts
nvm alias default 'lts/*'
