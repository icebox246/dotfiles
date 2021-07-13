export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$HOME/.scripts:$PATH"
export EDITOR=nvim
export VISUAL=neovide
export BROWSER=brave
export LANG=en_US.UTF-8
[ -f ~/.zshrc ] && . ~/.zshrc

# starting x if tty 1
[ "$(tty)" = "/dev/tty1" ] && startx &> /dev/null

rfetch
