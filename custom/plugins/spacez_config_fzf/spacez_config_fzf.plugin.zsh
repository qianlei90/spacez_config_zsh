#!/bin/zsh

if [ type fzf > /dev/null 2>&1 ] && [ -d "$SPACEZ_CONFIG_ZSH_FZF_DIR" ]; then
    export FZF_DEFAULT_OPTS='--height 40% --reverse --exact'

    source "${SPACEZ_CONFIG_ZSH_FZF_DIR}/shell/completion.zsh" 2> /dev/null
    source "${SPACEZ_CONFIG_ZSH_FZF_DIR}/shell/key-bindings.zsh"

    alias -g R='| fzf -m'
fi
