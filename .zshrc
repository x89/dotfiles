#prompt off
#RPROMPT=""
fpath=(~/zsh-completions/src ~/puppet-completion-zsh/ $fpath)

alias grep="grep ${GREP_OPTIONS}"
alias bc='bc -l'
alias sort="sort -h"
alias du="du --max-depth=1 -h"
alias pacman="pacaur"
unset GREP_OPTIONS
