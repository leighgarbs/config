alias ls ls --color

setenv VISUAL emacs
setenv EDITOR "$VISUAL"

if ( $?SSH_TTY ) then
    setenv GPG_TTY $SSH_TTY
else
    setenv GPG_TTY `tty`
endif
