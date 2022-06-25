#!/bin/zsh

# Owner
export USER_NAME="yesh"
export EDITOR="code"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias zshconfig="code ~/.zshrc"
alias envconfig="code ~/Documents/config/env.sh"
alias r="source ~/.zshrc && echo 'Reloaded!'"
alias reload=r

# git
unalias g
alias g='git status'

# might not need on all systems
export PATH=/usr/local/bin:$PATH
