# Bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Custom Aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi