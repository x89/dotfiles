ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=1000

setopt extendedglob
unsetopt autocd beep nomatch notify
bindkey -e
zstyle :compinstall filename '/home/napalm/.zshrc'

autoload -Uz compinit
compinit
#setopt complete_in_word # Tab completion mid-word

CASE_SENSITIVE="true"
setopt interactivecomments
setopt HISTIGNORESPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
#### This shit's too good
#autoload predict-on
#predict-on
#zle -N predict-on
#zle -N predict-off
#bindkey '^Q' predict-off

alias ls="ls --color=auto"
alias pacman="pacaur"

function s() {
	livestreamer $_ best
}

function garner() {
	s http://www.twitch.tv/garner071/popout
}

function ib() {
	exiv2 rm $_ && imgurbash $_ && shred -z -n2 -u $_ && echo "Shredded image"
}

# Adds exit code to the right
RPROMPT='[%?]'

# More completions for our lovely programs
fpath=(/usr/share/zsh/site-functions/ $fpath)

# Highlighting innit!
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# This will(may) start X afterwards.
source $HOME/.profile
