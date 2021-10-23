# The following lines were added by compinstall
#

zstyle ':completion:*' completer _expand _complete _ignored _approximate 
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/adam/.zshrc'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



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
	echo -en "\e]PFfefefe" #white
	clear #for background artifacting
fi


autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh_histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v

# fzf
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# export FZF_DEFAULT_COMMAND="find -L"

alias ls='ls --color=auto'
alias pacm='sudo pacman'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias btctl="bluetoothctl"
alias reflect="sudo reflector --verbose -c Germany -c Poland --age 12 --sort rate --save /etc/pacman.d/mirrorlist"
alias qute="qutebrowser"
alias grep="grep --color=always"
alias P="python3"
alias V="nvim"
alias Vf="vifmrun"
alias cal="cal -m"
alias getmus="youtube-dl -x --audio-format best --add-metadata "
alias tsr="transmission-remote"
alias mount="sudo mount"
alias unmount="sudo mount"

# Colors
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
	echo -n -e "%{$YELLOW%}$current_branch"
	[ -z "$current_status" ] || echo -n -e "%{$LIME%}*"
	return $RETURN_CODE
}

# Vi mode indicator

VICHAR1="["
VICHAR2="]"

function zle-line-init zle-keymap-select {
    VICHAR1="${${KEYMAP/vicmd/:}/(main|viins)/[}"
    VICHAR2="${${KEYMAP/vicmd/:}/(main|viins)/]}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Custom prompt

setopt PROMPT_SUBST

PROMPT='%F{15}$VICHAR1%B%F{12}%1~%b%F{15}$VICHAR2%(0?.%F{13}.%F{9})%(!.#.$) %f'
RPROMPT='$(git_module)'


source /home/adam/.config/broot/launcher/bash/br

rfetch
