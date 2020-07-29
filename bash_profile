#!/bin/bash -e

# Gets us the addpath function
source ~/bin/addpath

addpath PATH "${HOME}/bin"

alias emacs="emacs -nw"

export VISUAL=emacs
export EDITOR="${VISUAL}"
export GPG_TTY=$(tty)

# Provide a place to hang additional Bash setup configurable on each machine
if [ -d ~/.bash_profile.d ]; then
    for FILE in $(find ~/.bash_profile.d -depth 1 -type f -or -type l); do
        . "${FILE}"
    done
fi
