# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# From the Arch wiki
autoload -Uz compinit
compinit

# Nay shit

prompt skwp

alias pacman='pacaur'
alias egrep='egrep --color -Rn'
alias bc='bc -ql'
alias watch='watch --color --interval 1'
alias rm='noglob rm -i --one-filesystem'

if [[ -f /usr/share/vim/vim80/macros/less.sh ]]; then
	alias less='/usr/share/vim/vim80/macros/less.sh'
fi

export EDITOR='vim'
export VISUAL=$EDITOR
export QUOTING_STYLE='literal'

