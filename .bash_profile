#
# ~/.bash_profile
#
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="~/.scripts:$PATH"
[[ -f ~/.bashrc ]] && . ~/.bashrc

# starting x if tty 1
[[ "$(tty)" == "/dev/tty1" ]] && startx > /dev/null
