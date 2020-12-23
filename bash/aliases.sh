##
## useful bash aliases
##

## list files in style
## NOTE: assumes GNU ls (i.e., this doesn't with BSD ls)
alias ls="ls --color='always'"

## list files in columnds with other info
alias ll="ls -lha"

## a better `mkdir` make parent directories as needed
alias mkdir="mkdir -pv"

## list files sorted by size
## NOTE: assumes GNU ls (i.e., this doesn't work with BSD ls)
alias lt='ls --human-readable --size -l -S --classify'

## grep with style (color codes what you're grepping for)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
