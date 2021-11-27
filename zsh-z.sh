#!/bin/zsh

ZSH_CUSTOM=~/.oh-my-zsh/custom

git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

echo "
# zsh-z command line tool https://github.com/agkozak/zsh-z
# Allows quick navigation to frequently used directories
# Double tab displays all directories nicely
# Use tab or arrows to select highlighted option
source $ZSH_CUSTOM/plugins/zsh-z/zsh-z.plugin.zsh
autoload -U compinit && compinit
zstyle ':completion:*' menu select" >> ~/.zshrc

echo "zsh-z installation complete.
Logout and login to apply changes"
