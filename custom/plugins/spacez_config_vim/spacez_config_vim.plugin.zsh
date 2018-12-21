#!/bin/zsh

if type nvim> /dev/null 2>&1; then
    export EDITOR="nvim"
    alias v="nvim"
    alias vi="nvim"
    alias vim="nvim"
    alias vimrc="vim -O $HOME/.config/nvim/{init,plugin_manager}.vim"
fi
