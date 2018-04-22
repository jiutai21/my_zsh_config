#!/bin/bash

ZSH_AUTOSUGGESTIONS="https://github.com/zsh-users/zsh-autosuggestions.git"
ZSH_SYNTAX_HIGHLIGHTING="https://github.com/zsh-users/zsh-syntax-highlighting.git"

git clone $ZSH_AUTOSUGGESTIONS ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone $ZSH_SYNTAX_HIGHLIGHTING ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp zshrc ~/.zshrc
