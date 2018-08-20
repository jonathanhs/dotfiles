
# add this block at the end of the file

export PS1='[\e[0;92m\u\e[m@\e[0;34m\h\e[m:\e[0;93m\w\e[m\e[0;31m$(__git_ps1 " (%s)")\e[m]\n>'
export TERM="xterm-256color"

# aliases
alias .....='cd ../../../../..'
alias ....='cd ../../../..'
alias ...='cd ../../..'
alias ..='cd ../..'
alias ls='ls -p --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias lt='ls -ltr'
alias m='less -X'
