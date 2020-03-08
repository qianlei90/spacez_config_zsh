#!/bin/zsh

if [ -d "$SPACEZ_CONFIG_ZSH_ASYNCTASKS_DIR" ]; then
    alias t="$SPACEZ_CONFIG_ZSH_ASYNCTASKS_DIR/bin/asynctask -f"
fi
