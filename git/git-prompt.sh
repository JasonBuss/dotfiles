# PS1="$PS1"'\[\033[30m\]'    	# change to black
# PS1="$PS1"'\[\033[31m\]'    	# change to red
# PS1="$PS1"'\[\033[32m\]'    	# change to green
# PS1="$PS1"'\[\033[33m\]'    	# change to yellow
# PS1="$PS1"'\[\033[34m\]'    	# change to blue
# PS1="$PS1"'\[\033[35m\]'    	# change to purple
# PS1="$PS1"'\[\033[36m\]'  	# change color to cyan
# PS1="$PS1"'\[\033[37m\]'    	# change to white

	PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
	PS1="$PS1"'\[\e[01;30m\]\t' # TimeStamp
	PS1="$PS1"'`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`' #Add check for valid or failed command	
	PS1="$PS1"'\[\033[34m\]'	# change color
	PS1="$PS1"'\u'              # current user
	PS1="$PS1"'\[\033[37m\]'	# change color
	PS1="$PS1"'@'				# '@'
	PS1="$PS1"'\[\033[35m\]'    # change color
	PS1="$PS1"'\h'             	# current host
	PS1="$PS1"'\[\033[37m\]'    # change color
	PS1="$PS1"' in '			# ' in '
	PS1="$PS1"'\[\033[36m\]'    # change color
	PS1="$PS1"'\W'              # current working directory

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
			 
			PS1="$PS1"'`[[ $(git status 2> /dev/null) =~ Changes\ to\ be\ committed: ]] && echo "\[\e[33m\]" || echo "\[\e[31m\]"``[[ ! $(git status 2> /dev/null) =~ nothing\ to\ commit,\ working\ .+\ clean ]] || echo "\[\e[32m\]"`'
			PS1="$PS1"'`__git_ps1`'   # bash function
			
		fi
	fi
	
	PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"'\n'                 # new line
	PS1="$PS1""$ "                 # prompt: always $