#!/bin/zsh -e

# Gets us the addpath function
source ~/bin/addpath

addpath PATH "${HOME}/.cargo/bin"
addpath PATH "${HOME}/bin"
export PATH

alias emacs="emacs -nw"

export VISUAL=emacs
export EDITOR="$VISUAL"
export GPG_TTY=$(tty)

# Provide a place to hang additional zsh setup configurable on each machine
if [ -d ~/.zprofile.d ]; then
    for FILE in $(find ~/.zprofile.d -maxdepth 1 -type f -or -type l); do
        . "${FILE}"
    done
fi
