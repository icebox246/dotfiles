#
# ~/.bashrc
#

# To diable annoying pausing!
stty -ixon

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliasses
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'


oldps1='[\u@\h \W]\$ '

PS1='\[\e[0;36m\][\[\e[0;37m\]\u\[\e[0;97m\]@\[\e[0;37m\]\h \[\e[0;96m\]\W]\[\e[0;36m\e[0;93m\]\$ \[\e[m\]'
