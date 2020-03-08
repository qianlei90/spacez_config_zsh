#!/bin/zsh

# 代理
if [ ! -z "$$SPACEZ_CONFIG_ZSH_PROXY" ]; then
    alias h="http_proxy=${SPACEZ_CONFIG_ZSH_PROXY} https_proxy=${SPACEZ_CONFIG_ZSH_PROXY} no_proxy=localhost,127.0.0.1,.bugfree.show"
    alias exh="export http_proxy=${SPACEZ_CONFIG_ZSH_PROXY} && export https_proxy=${SPACEZ_CONFIG_ZSH_PROXY}"
    alias unexh="unset http_proxy && unset https_proxy"
fi
