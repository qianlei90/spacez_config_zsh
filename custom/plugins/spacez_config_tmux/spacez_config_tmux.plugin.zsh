#!/bin/zsh

tmux_command="tmux new-session -s `whoami` || tmux attach-session -t `whoami`"
alias mars="$tmux_command"
alias tmuxrc="vim $HOME/.tmux.conf"
