#!/bin/sh

# Gnome
dconf dump / > ~/.backup/gnome-settings

# Brave
tar czf ~/.backup/brave.tar.gz ~/.config/BraveSoftware
