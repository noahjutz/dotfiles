#!/bin/sh

# Gnome
dconf load / < ~/.backup/gnome-settings

# Brave
tar xf ~/.backup/brave.tar.gz -C ~/.config/
