#!/bin/zsh

function load_pyenv() {
    export PYENV_ROOT="$SPACEZ_CONFIG_ZSH_PYENV_DIR"
    export PATH="$PYENV_ROOT/bin:$PATH"

    eval "$(pyenv init - zsh)"
    eval "$(pyenv virtualenv-init - zsh)"
}
