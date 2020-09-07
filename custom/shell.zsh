#!/bin/zsh

# zsh的配置
alias zshrc="vim $HOME/.zshrc"

# ls
if type lsd > /dev/null 2>&1; then
    base_ls='lsd -hl --color=auto'
else
    base_ls='ls -hl --color=auto --ignore="*\.pyc" --ignore="*\.pyo" --ignore="__pycache__"'
fi
alias ll="$base_ls"
alias la="$base_ls -A"
alias ldot="$base_ls -d .*"

# htop
if type htop > /dev/null 2>&1; then
    alias top="htop"
fi

# du
alias dud='du -d 1 -h'
alias duf='du -sh *'

# free
alias free='free -h'

# trash-cli
if type trash > /dev/null 2>&1; then
    alias rm='trash'
fi

# tree
if type tree > /dev/null 2>&1; then
    alias tree='tree -N'
fi

# grep/ag
if type ag > /dev/null 2>&1; then
    alias -g G='| ag'
else
    alias -g G='| grep'
fi

# ping
if type prettyping > /dev/null 2>&1; then
    alias ping='prettyping'
fi

# json parser
if type jq > /dev/null 2>&1 && type jid > /dev/null 2>&1; then
    alias -g J='| jid -p | jq'
fi

func load_shell_for_mac() {
    # df
    alias df='df -H'
}

func load_shell_for_linux() {
    # df
    base_df='df -hT -x tmpfs -x devtmpfs -x overlay'
    if [ "$EUID" -ne 0 ]; then
        alias df="sudo $base_df"
    else
        alias df="$base_df"
    fi
}

case "$OSTYPE" in
    darwin*) load_shell_for_mac ;;
    linux-gnu*) load_shell_for_linux ;;
esac
