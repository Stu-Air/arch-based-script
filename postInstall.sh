##!/bin/bash

#desktop="kde"
desktop="gnome"
#desktop="xfce"

cd PostInstall

# --------------- CONNECTING TO WIFI --------------- #
#nmcli d wifi connect [SSID] password [PASSWORD]

# ----- link second drive to system ----- #  CHANGE THESE TO COPY MAYBE
    mkdir ~/OneDrive
    ln -sf /mnt/Media/home/Downloads/* ~/Downloads
    ln -sf /mnt/Media/home/Pictures/* ~/Pictures/
    ln -sf /mnt/Media/home/Videos/* ~/Videos/
    mkdir ~/.config/autostart
    ln -sf /mnt/Media/home/.config/autostart/* ~/.config/autostart
    ln -sf /mnt/Media/home/.config/rclone ~/.config
    ln -sf /mnt/Media/home/.config/transmission ~/.config
    ln -sf /mnt/Media/home/.thunderbird ~/
    ln -sf /mnt/Media/home/.fonts ~/
    sudo ln -sf /mnt/Media/home/Pictures/profile\ pics/profile\ pic.png /var/lib/gdm3/.face
    ln -sf /mnt/Media/home/Pictures/profile\ pics/profile\ pic.png ~/.face
    ln -sf /mnt/Media/home/.minecraft/screenshots ~/Pictures/minecraft-screenshots
    ln -sf /mnt/Media/home/.minecraft ~/
#ln -sf /mnt/Media/WorkFromHome ~/Desktop

# --------------- INSTALLING BASE --------------- #
#sh ./01-base.sh

# --------------- SETTING UP DESKTOP --------------- #

cd $desktop
sh ./02-$desktop.sh
sh ./02-layout.sh
cd ../

# --------------- INSTALLING PACMAN PROGRAMS --------------- #
sh ./01-repo-software.sh

# --------------- INSTALLING AUR PROGRAMS --------------- #
sh ./02-ExtraRepo-software.sh

# --------------- INSTALLING FLATPAK PROGRAMS --------------- #
#sh ./03-flatpak-software.sh

# --------------- INSTALLING SNAP PROGRAMS --------------- #
#sh ./04-snap-software.sh

# --------------- INSTALLING APPIMAGE PROGRAMS --------------- #
#sh ./05-appimage-software.sh

# --------------- INSTALLING GAMES --------------- #
#sh ./software-games.sh

# --------------- CLEANUP --------------- #
sh ./clean.sh 

clear
# pacmd list-sinks | grep sample #Checks Hi-res audio 
cat /proc/sys/vm/swappiness   #Checks Swappiness should be 10
echo "###################################### "
echo "##### Please restart your system ##### "
echo "###################################### "
