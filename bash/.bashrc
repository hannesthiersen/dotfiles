#
# ~/.bashrc
#

# colours
colours() {
	for C in {0..255}
	do
		tput setab $C
		echo -n "$C "
	done
	tput sgr0
	echo
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set vi keybindins
set -o vi

# set capslock as additional escape key
setxkbmap -option caps:escape

# variables
export EDITOR=/usr/bin/nvim
export HISTCONTROL=ignoredups

# aliases
alias ls='ls --color=auto'
alias vim='nvim'
alias gpp='g++'

# prompt customization
# colour codes
RED="\[$(tput setaf 9)\]"
YELLOW="\[$(tput setaf 11)\]"
GREEN="\[$(tput setaf 10)\]"
BLUE="\[$(tput setaf 12)\]"
CYAN="\[$(tput setaf 14)\]"
MAGENTA="\[$(tput setaf 13)\]"
RESET="\[$(tput sgr0)\]"
# format codes
BOLD="\[\e[1m\]"

PS1="${BOLD}${RED}[${YELLOW}\u${GREEN}@${CYAN}\h${BLUE} \W${RED}]${MAGENTA}\$${RESET} "


