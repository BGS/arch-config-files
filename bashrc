#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
set_prompt () {
    Last_Command=$? # Must come first!
    Blue='\[\e[01;34m\]'
    White='\[\e[01;37m\]'
    Red='\[\e[01;31m\]'
    Green='\[\e[01;32m\]'
    Reset='\[\e[00m\]'
    

    # Add a bright white exit status for the last command
    PS1="$Red-> $White\$? "
    
    # If root, just print the user in red. Otherwise, print the current user
    #  in green.
    if [[ $EUID == 0 ]]; then
        PS1+="$Red\\u "
    else
        PS1+="$Green\\u "
    fi
    # Print the working directory and prompt marker in blue, and reset
    # the text color to the default.
    PS1+="$Blue\\w \\\$$Reset "
}
inxi -F
PROMPT_COMMAND='set_prompt'
