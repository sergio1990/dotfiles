# .dotfiles repository

This repository contains a bunch of the configuration files  (so-called dotfiles due to all of them begin by the dot character) for the different applications.

Those applications could be:
- vim
- tmux
- etc...

All those files contain the configuration, which is created personally by me for my own needs and habits.

## Installation

Maybe I sometime will ponder some automatic script to install dotfiles, but right now there is the only manual way for installation.

Here it is:

1. Clone the repo `git clone git@github.com:sergio1990/dotfiles.git ~/.dotfiles`
2. Make a symlink for the needed configuration script. For instance, `ln -s ~/.dotfiles/.vimrc ~/.vimrc`
3. Perform application specific further steps to install the plugin manager and plugins themselves.

## Supported applications

### vim

Vim gains its power by using plugins, which I've installed a lot. I am using [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins dependencies. Please, follow the instructions to install plug and all the plugins.

Also, be aware, that there is a `.gvimrc` file, which overrides Vim settings only for the GUI Vim, for instance, MacVim on Mac OS.

### tmux

...
