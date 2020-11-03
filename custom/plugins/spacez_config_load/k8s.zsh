#!/bin/zsh

function load_k8s() {
    source ${SPACEZ_CONFIG_ZSH_OH_MY_ZSH_DIR}/plugins/kubectl/kubectl.plugin.zsh

    if type kubectl > /dev/null 2>&1; then
        alias k="kubectl"
        alias -g Y="-o yaml"
    fi
}
