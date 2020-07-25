#!/bin/bash -e

# Source global definitions
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if [ -f "${HOME}/.bash_profile" ]; then
   . ${HOME}/.bash_profile
fi

export VISUAL=emacs
export EDITOR="${VISUAL}"
export GPG_TTY=$(tty)
