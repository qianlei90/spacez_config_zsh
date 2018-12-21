#!/bin/zsh

if type tmux > /dev/null 2>&1; then
    tmux_command="tmux new-session -s `whoami` || tmux attach-session -t `whoami`"
    alias mars="$tmux_command"
    alias tmuxrc="vim $HOME/.tmux.conf"
fi
