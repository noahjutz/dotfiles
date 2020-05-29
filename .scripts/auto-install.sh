#!/bin/bash

# parameters
if [[ $1 == "-f" ]] || [[ $1 == "--full" ]];then
	echo FULL
elif [[ $1 == "-m" ]] || [[ $1 == "--minimal" ]];then
	echo MINIMAL
else
	cat "help"
	exit
fi

# git
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

# restore backup
sh ~/.scripts/restore.sh

# change shell to fish
chsh -s /bin/fish

# packages
sh ~/.scripts/install-packages.sh

