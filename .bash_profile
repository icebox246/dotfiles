#
# ~/.bash_profile
#
export PATH="~/.scripts:$PATH"
[[ -f ~/.bashrc ]] && . ~/.bashrc

# starting x if tty 1
[[ "$(tty)" == "/dev/tty1" ]] && startx
