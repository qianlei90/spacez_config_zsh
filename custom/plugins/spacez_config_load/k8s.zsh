#!/bin/zsh

function load_k8s() {
    source ${SPACEZ_CONFIG_ZSH_OH_MY_ZSH_DIR}/plugins/kubectl/kubectl.plugin.zsh
    source ${SPACEZ_CONFIG_ZSH_OH_MY_ZSH_DIR}/plugins/helm/helm.plugin.zsh

    if [ $commands[kubectl] ]; then
        alias k="kubectl"
        alias -g Y="-o yaml"
    fi
}
