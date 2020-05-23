#!/bin/sh
tar czvf content.tar.gz content/
gpg -cv content.tar.gz
shred -zvu content.tar.gz
wipe -rfv content/
