#
# ~/.bashrc
#

# To diable annoying pausing!
stty -ixon

# Set vi mode
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliasses
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias btctl="bluetoothctl"
alias bthead="bluetoothctl -- power on && bluetoothctl -- connect 00:16:94:35:31:F4"
alias reflect="sudo reflector --verbose -c Germany -c Poland --age 12 --sort rate --save /etc/pacman.d/mirrorlist"


oldps1='[\u@\h \W]\$ '

PS1='\[\e[0;35m\][\[\e[0;97m\]\u\[\e[0;95m\]@\[\e[97m\]\h \[\e[35m\]\W]\[\e[95m\]\$ \[\e[m\]'

## Write a nice looking message

#ufetch_arch.sh
#echo ""

export EDITOR=vim
