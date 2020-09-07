#!/bin/zsh

alias dk="docker"
alias drm="docker rm"
alias drmi="docker rmi"
alias dexec='docker exec -it -e LINES=$(tput lines) -e COLUMNS=$(tput cols)'

function docker_container_display() {
    result=$(docker ps $@ --format "table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}")
    echo ${result} | head -1 && echo ${result} | sed '1d' | sort
    unset result
}
alias dps=docker_container_display

function docker_images_display() {
    result=$(docker images $@ --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.Size}}" | grep -v -E '^<none>')
    echo ${result} | head -1 && echo ${result} | sed '1d' | sort
    unset result
}
alias dim=docker_images_display
