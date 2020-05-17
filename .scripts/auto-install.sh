#!/bin/sh

# Initial setup #

/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

# Install packages #

sudo pacman -Syy
sudo pacman -S --noconfirm fish yay code discord tor torbrowser-launcher htop virtualbox ranger
yay -S android-studio bitwarden

# Setup dependent on packages #

dconf load / < .backup/gnome-settings
