export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$HOME/.scripts:$HOME/.local/bin:$PATH"
export EDITOR=nvim
export BROWSER=brave
export LANG=en_US.UTF-8
export GHCUP_USE_XDG_DIRS=1
# [ -f ~/.zshrc ] && . ~/.zshrc
#

export LESS_TERMCAP_mb=$'\e[1;34m'
export LESS_TERMCAP_md=$'\e[1;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;15m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;19m'

# starting x if tty 1
[ "$(tty)" = "/dev/tty1" ] && startx &> /dev/null

