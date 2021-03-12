#!/bin/zsh

export GOPATH="${SPACEZ_CONFIG_ZSH_GOPATH}"
export GOROOT="${SPACEZ_CONFIG_ZSH_GOROOT}"
export PATH="${GOROOT}/bin:${GOPATH}/bin:${PATH}"

export GOPROXY="${SPACEZ_CONFIG_ZSH_GOPROXY}"
export GOPRIVATE="${SPACEZ_CONFIG_ZSH_GOPRIVATE}"
export GOSUMDB="sum.golang.google.cn"

source ${SPACEZ_CONFIG_ZSH_OH_MY_ZSH_DIR}/plugins/golang/golang.plugin.zsh
