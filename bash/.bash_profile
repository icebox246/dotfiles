#
# ~/.bash_profile
#
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="~/.scripts:$PATH"
export EDITOR=vim
export VISUAL=gvim
export BROWSER=qutebrowser
[[ -f ~/.bashrc ]] && . ~/.bashrc

# starting x if tty 1
[[ "$(tty)" == "/dev/tty1" ]] && startx &> /dev/null

source /home/adam/.config/broot/launcher/bash/br
