#!/bin/zsh -e

source "${HOME}/.zshrc"

# Gets us the addpath function
source ~/bin/addpath

addpath PATH "${HOME}/.cargo/bin"
addpath PATH "${HOME}/bin"
addpath PATH "${HOME}/bin/macos"
addpath PATH "/Applications/MATLAB_R2019a.app/bin"
addpath PATH "/Library/Python/2.7/bin"

# virtualenvwrapper
export WORKON_HOME="${HOME}/.virtualenvs"
export PROJECT_HOME="${HOME}"
source /usr/local/bin/virtualenvwrapper.sh
