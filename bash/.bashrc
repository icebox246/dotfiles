# # ~/.bashrc #
# To diable annoying pausing!
stty -ixon

# Set vi mode
set -o vi
shopt -s autocd

# Change colors in framebuffer

if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0000000" #black
	echo -en "\e]P0000000" #darkgrey
	echo -en "\e]P1ff5555" #darkred
	echo -en "\e]P9ff6e67" #red
	echo -en "\e]P250fa7b" #darkgreen
	echo -en "\e]PA5af78e" #green
	echo -en "\e]P3f1fa8c" #brown
	echo -en "\e]PBf4f99d" #yellow
	echo -en "\e]P4bd93f9" #darkblue
	echo -en "\e]PCcaa9fa" #blue
	echo -en "\e]P5ff79c6" #darkmagenta
	echo -en "\e]PDff92d0" #magenta
	echo -en "\e]P68be9fd" #darkcyan
	echo -en "\e]PE9aedfe" #cyan
	echo -en "\e]P7bfbfbf" #lightgrey
	echo -en "\e]PFe6e6e6" #white
	clear #for background artifacting
fi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliasses
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias btctl="bluetoothctl"
alias reflect="sudo reflector --verbose -c Germany -c Poland --age 12 --sort rate --save /etc/pacman.d/mirrorlist"
alias qute="qutebrowser"
alias grep="grep --color=always"
alias P="python3"
alias V="vim"
alias Vf="vifmrun"
alias mount="sudo mount"
alias unmount="sudo unmount"


oldps1='[\u@\h \W]\$ '


## PS1='\[\e[0;35m\][\[\e[0;97m\]\u\[\e[0;95m\]@\[\e[97m\]\h \[\e[35m\]\W]\[\e[95m\]\$ \[\e[m\]'
# PS1='\[\e[0;97m\][\[\e[37m\]\W\[\e[0;97m\]]\[\e[95m\]\$ \[\e[m\]'
WHITE="$(tput setaf 15)"
GRAY="$(tput setaf 7)"
PURPLE="$(tput setaf 5)"
PINK="$(tput setaf 13)"
GREEN="$(tput setaf 8)"
LIME="$(tput setaf 2)"
BROWN="$(tput setaf 1)"
RED="$(tput setaf 9)"
YELLOW="$(tput setaf 11)"
ORANGE="$(tput setaf 3)"
BLUE="$(tput setaf 12)"
RESET="$(tput sgr0)"

function git_module() {
	RETURN_CODE=$?
	git branch &> /dev/null || return $RETURN_CODE
	current_branch="$(git branch --show-current)"
	current_status=$(git status --porcelain)
	echo -n -e "\001$YELLOW\002$current_branch"
	[ -z "$current_status" ] || echo -n -e "\001$LIME\002*"
	return $RETURN_CODE
}

function exit_color() {
	if [[ $? ==  0 ]]; then
		echo -ne "\001$PINK\002"
	else
		echo -ne "\001$RED\002"
	fi
	return 0
}

# function right_prompt() {
# 	echo -ne "$(tput sc)"
# 	echo -n ""
# 	printf "%*s" $(( $COLUMNS+5 )) "$(git_module)"
# 	echo -n "$(tput rc)"
# }

PS1='\[$WHITE\][\[$BLUE\]\W\[$WHITE\]]$(git_module)$(exit_color)\$ \[$RESET\]'

## Write a nice looking message

export EDITOR=vim
export BROWSER=brave
export TERMINAL=alacritty

source /home/adam/.config/broot/launcher/bash/br
