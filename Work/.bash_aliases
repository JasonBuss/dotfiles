
LS_COMMON="-hg"
LS_COMMON="$LS_COMMON --color=auto"
LS_COMMON="$LS_COMMON -I NTUSER.DAT\* -I ntuser.dat\*"
LS_COMMON="$LS_COMMON -I ntuser.ini\* -I ntuser.pol\*"
LS_COMMON="$LS_COMMON -I desktop.ini\*"

# Aliases
alias ls="command ls $LS_COMMON"
alias la="ls -la"
alias ll="ls -l"
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'


# Subl alias handled via environment variables.
# alias subl='"/d/Program Files/Sublime Text 3/subl.exe"'
alias updatehosts='subl -n /c/windows/system32/drivers/etc/hosts' # update hosts file (doesn't work in windows 10)

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '

alias got='git '
alias get='git ' 