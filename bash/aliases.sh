##
## useful bash aliases
##

## list files in style
## NOTE: assumes GNU ls (i.e., this doesn't with BSD ls)
lscmd="$(command -v lsd)" || lscmd="ls"
alias ls="$lscmd --color='always'"

## list files in columnds with other info
alias ll="ls -lha"

## list files sorted by size
## NOTE: assumes GNU ls (i.e., this doesn't work with BSD ls)
alias lt='ls --human-readable --size=default -l -S --classify'

## a better `mkdir` make parent directories as needed
alias mkdir="mkdir -pv"

## grep with style (color codes what you're grepping for)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
