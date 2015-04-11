export LANG=en_GB.UTF-8
export TERM=rxvt-unicode-256color # Configured in .Xresources
export PROMPT_COMMAND="echo -ne '\a'"
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR="vim"
export BROWSER="firefox"
export PATH=$PATH:$HOME/bin
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

export LESS='-R '
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

export PYTHONSTARTUP=$HOME/.pythonstartup.py

#systemctl --user import-environment PATH
#systemctl --user import-environment	XDG_RUNTIME_DIR 
#systemctl --user import-environment DBUS_SESSION_BUS_ADDRESS
