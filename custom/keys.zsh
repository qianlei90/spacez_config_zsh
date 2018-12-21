#!/bin/zsh

# 使用 Emacs 快捷键
bindkey -e

# 命令行历史上下切换
bindkey -M emacs '^P' up-line-or-beginning-search
bindkey -M emacs '^N' down-line-or-beginning-search
