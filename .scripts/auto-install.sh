#!/bin/sh

# Initial setup #

/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

# Install packages #

sudo pacman -Syy
sudo pacman -S --noconfirm fish yay code discord tor torbrowser-launcher htop virtualbox ranger etcher brave
yay -S android-studio bitwarden

# Restore backup #

sh ~/.scripts/restore.sh
