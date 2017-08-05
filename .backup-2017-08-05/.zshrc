# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# David's customisations 
prompt skwp

alias pacman="pacaur"
alias bc="bc -lq"  # Allows division + No GNU message

export EDITOR="vim"
export TERM="screen-256color"
