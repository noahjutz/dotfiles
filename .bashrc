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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/noah/.sdkman"
[[ -s "/home/noah/.sdkman/bin/sdkman-init.sh" ]] && source "/home/noah/.sdkman/bin/sdkman-init.sh"
