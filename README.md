# OSX setup

## Prerequisites

1. Setup ~/src directory
    * `mkdir -p ~/src; cd ~/src`
2. Create temporary .ssh keys and upload to bitbucket.
    * dotfiles will override these later.
    * `ssh-keygen;  cat ~/.ssh/id_rsa.pub | pbcopy`
2. Setup passwordless sudo
    * `sudo visudo`
    * Change this line FROM:
        * `%admin ALL=(ALL) ALL`
    * TO:
      * `%admin ALL=(ALL) NOPASSWD: ALL`
2. Install X-Code
    * then run: `xcode-select --install` and follow prompts.
2. Clone this
    * `git clone git@bitbucket.org:bswift/osx_setup_bs.git; cd osx_setup_bs`
3. run  `run.sh`
    * immediately it will block, and wait for your password.. yet it won't prompt you. Hit "enter" and you will see the password prompt.
