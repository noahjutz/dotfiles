#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export VISUAL=vim
export EDITOR=$VISUAL

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
