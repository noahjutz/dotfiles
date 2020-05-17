#!/bin/sh
sudo pacman -Syy
sudo pacman -S --noconfirm fish yay code discord tor torbrowser-launcher htop virtualbox ranger
yay -S android-studio bitwarden
dconf load / < .backup/gnome-settings
