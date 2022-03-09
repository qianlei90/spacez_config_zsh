#!/bin/zsh

export EDITOR="nvim"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

if type lvim > /dev/null 2>&1; then
    export EDITOR="lvim"
    alias v="lvim"
    alias vi="lvim"
    alias vim='lvim'
fi
