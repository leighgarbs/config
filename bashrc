# Source global definitions
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

export VISUAL=emacs
export EDITOR="$VISUAL"
export GPG_TTY=$(tty)
