#!/bin/bash

config_repo() {
	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
	echo ".cfg" >> .gitignore
}

restore_backup() {
	sh ~/.scripts/restore.sh
}

config_shell() {
	chsh -s /usr/bin/fish
}

install_packages() {
	sudo pacman -Syy
	if [[ $inp_install_pkg == [Ff] ]]; then
		sudo pacman -S --noconfirm $(cat pacman-full pacman-min)
		yay -S $(cat yay-full)
	elif [[ $inp_install_pkg == [Mm] ]]; then
		sudo pacman -S --noconfirm $(cat pacman-min)
	fi
}

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
	echo Select what to do. Default is Y.
	read -p ":: Config repo? [Y/n]: "		inp_cfg_repo
	read -p ":: Restore backup? [Y/n]: "		inp_restore
	read -p ":: Config shell? [Y/n]: "		inp_cfg_sh
	read -p ":: Install packages? [f/m/n]: "	inp_install_pkg
	read -p ":: Execute? [Y/n]: "			inp_execute
fi

if [[ $inp_execute == [Nn] ]]; then
	echo Canceled.
	exit
else
	echo Start auto-install.
fi

if [[ $inp_cfg_repo != [Nn] ]]; then
	config_repo
	echo config_repo $?
fi
if [[ $inp_restore != [Nn] ]]; then
	restore_backup
	echo restore_backup $?
fi
if [[ $inp_cfg_sh != [Nn] ]]; then
	config_shell
	echo config_shell $?
fi
if [[ $inp_install_pkg != [Nn] ]]; then
	install_packages
	echo install_packages $?
fi
