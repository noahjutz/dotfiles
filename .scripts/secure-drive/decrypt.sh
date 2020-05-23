#!/bin/sh
gpg -v content.tar.gz.gpg
tar xzvf content.tar.gz
shred -zvu content.tar.gz
