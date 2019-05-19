export CLICOLOR=1
export TERM="xterm-color"
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=always'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="[\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;3m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[32m\]\[\$(parse_git_branch)\]\[$(tput sgr0)\]\[\033[38;5;15m\]]\n\\$ \[$(tput sgr0)\]"

# export PS1="[\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;3m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]]\\$ \[$(tput sgr0)\]"
# old ps1
#"\[\e[00;37m\][\u@\h \[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;37m\]]\\$ \[\e[0m\]"

eval "$(thefuck --alias)"

if [ -f ~/.path ]; then
    . ~/.path
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
