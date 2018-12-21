#!/bin/zsh

if type dircolors > /dev/null 2>&1; then
    if [[ "$TERM" = *256color || "$TERM" = screen* || "$TERM" = xterm* ]]; then
        eval $(dircolors -b "$SPACEZ_CONFIG_ZSH_ROOT_DIR/custom/lscolor-256color")
    fi
fi
