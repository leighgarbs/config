#!/bin/zsh

source "${HOME}/.zshrc"

PATH="${HOME}/.cargo/bin:${PATH}"
PATH="${HOME}/bin/macos:${PATH}"
PATH="${HOME}/bin:${PATH}"
PATH="/Applications/MATLAB_R2019a.app/bin:${PATH}"
PATH="/Library/Python/2.7/bin:${PATH}"

export PATH

# virtualenvwrapper
export WORKON_HOME="${HOME}/.virtualenvs"
export PROJECT_HOME="${HOME}"
source /usr/local/bin/virtualenvwrapper.sh
