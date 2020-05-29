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

if [[ $1 == "-m" ]]; then
	read -p ":: Config repo? [Y/n]: "	inp_cfg_repo
	read -p ":: Restore backup? [Y/n]: "	inp_restore
	read -p ":: Config shell? [Y/n]: "	inp_cfg_sh
	read -p ":: Install packages? [Y/n]: "	inp_install_pkg
	read -p ":: Execute? [Y/n]: "		inp_execute
	echo $inp_cfg_repo, $inp_restore, $inp_cfg_sh, $inp_install_pkg, $inp_execute
fi

config_repo() {
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

