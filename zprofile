#!/bin/zsh -e

source "${HOME}/.zshrc"

# Gets us the addpath function
source ~/bin/addpath

addpath PATH "${HOME}/.cargo/bin"
addpath PATH "${HOME}/bin"
export PATH

# Provide a place to hang additional zsh setup configurable on each machine
if [ -d ~/.zprofile.d ]; then
    for FILE in $(find ~/.zprofile.d -depth 1 -type f -or -type l); do
        . "${FILE}"
    done
fi
