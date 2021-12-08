#!/bin/bash

set -e

ROOT_DIR=$(dirname "$(dirname "$(readlink -f "$0")"))")
CWD=$(pwd)

function SUBTREE_PULL() {
    git subtree pull --prefix=custom/plugins/"$1" --squash ssh://git@github.com/zsh-users/"$1".git master
}

cd "$ROOT_DIR"

SUBTREE_PULL zsh-autosuggestions
SUBTREE_PULL zsh-syntax-highlighting
SUBTREE_PULL zsh-completions

cd "$CWD"
