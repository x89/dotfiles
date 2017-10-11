#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#prompt cloud
prompt skwp

alias pacman=pacaur
alias egrep="egrep --color -Rn"
alias bc='bc -ql'
alias watch="watch --color --interval 1"

export PATH=${PATH}:${HOME}/bin
export EDITOR="vim"
