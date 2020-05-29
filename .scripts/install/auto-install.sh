#!/bin/bash

# parameters
case $1 in
	"-f" )
		echo FULL
		;;
	"-m" )
		echo MINIMAL
		;;
	* )
		cat "help"
		exit
		;;
esac

config_git() {
	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
	echo ".cfg" >> .gitignore
}

restore_backup() {
	sh ~/.scripts/restore.sh
}

config_shell() {
	chsh -s /bin/fish
}

install_packages() {
	sh ~/.scripts/install-packages.sh
}

