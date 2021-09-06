#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lAh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias sudo='doas'
alias mkdir='mkdir -p'
alias add='doas pacman -S'
alias rmpkg='doas pacman -Rnss'
alias t='tmux new -As 0'
alias svi='doas visudo'
alias vim='nvim'
alias svim='doas nvim'

. $HOME/.local/bin/git_completion

PS1='\W\n\$ '

# fancy prompt
eval "$(starship init bash)"
