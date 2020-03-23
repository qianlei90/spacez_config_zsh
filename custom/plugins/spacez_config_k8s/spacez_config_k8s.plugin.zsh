#!/bin/zsh

if type kubectl > /dev/null 2>&1; then
    alias k="kubectl"
fi

if [ -d "$SPACEZ_CONFIG_ZSH_KUBECTX_DIR" ]; then
    alias kns="$SPACEZ_CONFIG_ZSH_KUBECTX_DIR/kubens"
    alias kctx="$SPACEZ_CONFIG_ZSH_KUBECTX_DIR/kubectx"
    fpath=($fpath "$SPACEZ_CONFIG_ZSH_KUBECTX_DIR/completion")
fi
