#!/bin/zsh

function spacez_load_k8s() {
    if type kubectl > /dev/null 2>&1; then
        source <(kubectl completion zsh)
        alias k="kubectl"
    fi

    if type helm > /dev/null 2>&1; then
        source <(helm completion zsh)
    fi

    if type minikube > /dev/null 2>&1; then
        source <(minikube completion zsh)
    fi

    if type istioctl > /dev/null 2>&1; then
        alias i="istioctl"
    fi

    if [ -d "$SPACEZ_CONFIG_ZSH_KUBECTX_DIR" ]; then
        alias kns="$SPACEZ_CONFIG_ZSH_KUBECTX_DIR/kubens"
        alias kctx="$SPACEZ_CONFIG_ZSH_KUBECTX_DIR/kubectx"
    fi
}
