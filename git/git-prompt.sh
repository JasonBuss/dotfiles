# PS1="$PS1"'\[\033[30m\]'    	# change to black
# PS1="$PS1"'\[\033[31m\]'    	# change to red
# PS1="$PS1"'\[\033[32m\]'    	# change to green
# PS1="$PS1"'\[\033[33m\]'    	# change to yellow
# PS1="$PS1"'\[\033[34m\]'    	# change to blue
# PS1="$PS1"'\[\033[35m\]'    	# change to purple
# PS1="$PS1"'\[\033[36m\]'  	# change color to cyan
# PS1="$PS1"'\[\033[37m\]'    	# change to white




	PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
	PS1="$PS1"'\[\033[32m\]'       # change to green
	PS1="$PS1"'\u'             # user@host<space>
	PS1="$PS1"'\[\033[37m\]'    	# change to white
	PS1="$PS1"' at '             # user@host<space>
	PS1="$PS1"'\[\033[35m\]'    	# change to purple
	PS1="$PS1"'\h'             # user@host<space>
	PS1="$PS1"'\[\033[37m\]'    	# change to white
	PS1="$PS1"' in '
	PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
	PS1="$PS1"'\W'                 # current working directory

	if test -z "$WINELOADERNOEXEC"
	then
		GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
		if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
#			PS1="$PS1"'\[\033[36m\]'  # change color to cyan
#			PS1="$PS1"'`__git_ps1`'   # bash function
			PS1='\[\e[01;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null) =~ Changes\ to\ be\ committed: ]] && echo "\[\e[33m\]" || echo "\[\e[31m\]"``[[ ! $(git status 2> /dev/null) =~ nothing\ to\ commit,\ working\ .+\ clean ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]\$ '
		fi
	fi
	PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"'\n'                 # new line
	PS1="$PS1"'$ '                 # prompt: always $

# export PS1='\[\e[01;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null) =~ Changes\ to\ be\ committed: ]] && echo "\[\e[33m\]" || echo "\[\e[31m\]"``[[ ! $(git status 2> /dev/null) =~ nothing\ to\ commit,\ working\ .+\ clean ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]\$ '