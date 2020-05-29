#!/bin/bash

# parameters
case $1 in
	"-f" ) echo FULL;;
	"-m" ) echo MINIMAL;;
	* ) cat "help"; exit;;
esac

# git
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

# restore backup
sh ~/.scripts/restore.sh

# change shell to fish
chsh -s /bin/fish

# packages
sh ~/.scripts/install-packages.sh

