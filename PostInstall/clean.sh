#!/bin/bash

# --------------- Clean installer folder 
rm -rf ~/Desktop/apps
rm -rf ~/Desktop/extensions
#rm -rf ~/usb # (doesnt delete as it usb is mounted to it)

sudo pacman -Syu --noconfirm   
sudo pacman -Rs --noconfirm $(pacman -Qqtd)
