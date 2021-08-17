#!/bin/bash

ZSH_AUTOSUGGESTIONS="https://github.com/zsh-users/zsh-autosuggestions.git"
ZSH_SYNTAX_HIGHLIGHTING="https://github.com/zsh-users/zsh-syntax-highlighting.git"
ZSH_COMPLETIONS="https://github.com/zsh-users/zsh-completions"

ZSH_CUSTOM=${HOME}/.oh-my-zsh/custom


if [ ! -d ${HOME}/.oh-my-zsh ];then
    if [ $HTTP_PROXY ];then
        proxy="-x ${HTTP_PROXY}"
    fi
    sh -c "$(curl ${proxy} -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

git clone ${ZSH_AUTOSUGGESTIONS} ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
git clone ${ZSH_SYNTAX_HIGHLIGHTING} ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
git clone ${ZSH_COMPLETIONS} ${ZSH_CUSTOM}/plugins/zsh-completions

if [! -f ${HOME}/.zshr ];then
    cp zshrc ${HOME}/.zshrc
fi
