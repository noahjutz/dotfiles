#!/bin/sh

# Gnome
echo Gnome ...
dconf dump / > ~/.backup/gnome-settings
echo Gnome DONE

# Brave
echo Brave ...
tar czf ~/.backup/brave.tar.gz ~/.config/BraveSoftware
echo Brave DONE
