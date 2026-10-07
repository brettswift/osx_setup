#!/usr/bin/env bash

set -e
set -x

DOTFILES="git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

[ -d "$HOME/dotfiles" ] || git clone --bare git@github.com:brettswift/osx_dotfiles.git "$HOME/dotfiles"

$DOTFILES config --local status.showUntrackedFiles no

backup="$HOME/.dotfiles-backup"
$DOTFILES ls-tree -r --name-only HEAD | while read -r f; do
  if [ -e "$HOME/$f" ]; then
    mkdir -p "$backup/$(dirname "$f")"
    mv "$HOME/$f" "$backup/$f"
  fi
done

$DOTFILES checkout
