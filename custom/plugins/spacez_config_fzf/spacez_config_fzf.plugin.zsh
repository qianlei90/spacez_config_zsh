#!/bin/zsh

if [ -d "$SPACEZ_CONFIG_ZSH_FZF_SHELL_DIR" ]; then
    export FZF_DEFAULT_OPTS='--height 40% --reverse --exact'

    source "${SPACEZ_CONFIG_ZSH_FZF_SHELL_DIR}/completion.zsh"
    source "${SPACEZ_CONFIG_ZSH_FZF_SHELL_DIR}/key-bindings.zsh"

    alias -g R='| fzf -m'
fi
