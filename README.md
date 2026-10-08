# OSX setup

Apple Silicon Macs. Run the scripts in `run.sh` order; each can also be run on its own.

## Prerequisites

1. `xcode-select --install`
2. Create an SSH key (`ssh-keygen -t ed25519`) and add it to GitHub.
3. `git clone git@github.com:brettswift/osx_setup.git ~/src/brettswift/osx_setup`

## Scripts

| script | does |
| --- | --- |
| `brew_and_packages.sh` | Homebrew, CLI tools, iTerm2, Spotify, 1Password |
| `oh-my-zsh.sh` | oh-my-zsh, spaceship theme, zsh-nvm, zsh-syntax-highlighting, iTerm2 shell integration, fzf keybindings |
| `dotfiles.sh` | clones `osx_dotfiles` as a bare repo into `~/dotfiles` and checks it out over `$HOME` (existing files go to `~/.dotfiles-backup`) |
| `nvm.sh` | nvm and the latest node LTS |
| `neovim.sh` | vim-plug, a venv with pynvim (Homebrew python), `:PlugInstall` |
| `osx.sh` | Finder, Dock, keyboard and screenshot defaults |

Put API tokens in `~/.secrets` (sourced by `.zshrc`, never committed).
Set a Nerd Font / FiraCode in the iTerm2 profile (Text tab) for the spaceship prompt.
