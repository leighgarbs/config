#!/bin/zsh -e

# Source global definitions
if [ -f /etc/zshrc ]; then
   . /etc/zshrc
fi

export VISUAL=emacs
export EDITOR="$VISUAL"
export GPG_TTY=$(tty)
