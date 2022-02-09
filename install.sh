#!/bin/bash

swap_size="10"    # system default is 60


# ----- Connection to wifi ----- #
   nmcli radio wifi on
#   nmcli dev wifi connect [INSERT SSID] password [PASSWORD]

# ----- Update & Upgrade Arch ----- #
    sudo pacman -Syu

# ----- Adding Second Drive ----- #
    echo "LABEL=Media                                  /mnt/Media   auto   nosuid,nodev,nofail,x-gvfs-show   0 0" | sudo tee -a /etc/fstab

# ----- Changing swappiness ----- #
    sudo sh -c 'echo "vm.swappiness="'$swap_size' >> /etc/sysctl.d/99-swappiness.conf'

# ----- Dev tools Arch ----- #
    sudo pacman -Sy --noconfirm base-devel git gettext #xdg-user-dirs
#     xdg-user-dirs-update
#      LC_ALL=C xdg-user-dirs-update --force

# ----- Adding Flatpak Repo arch ----- #
    sudo pacman -Sy --noconfirm flatpak

mkdir ~/Desktop/apps
   cd ~/Desktop/apps
   
# ----- Adding Snap Repo Arch ----- #
    git clone https://aur.archlinux.org/snapd.git
     cd snapd
      makepkg -si --noconfirm
       cd ..
        sudo systemctl enable --now snapd.socket
         sudo ln -s /var/lib/snapd/snap /snap
         #sudo snap install snapd

# ----- Adding AUR Repo Arch ----- #
    git clone https://aur.archlinux.org/libpamac-aur.git
     cd libpamac-aur
      makepkg -si --noconfirm
       cd ..
        sudo pacman -Sy --noconfirm vte3 appstream-glib archlinux-appstream-data libhandy
         git clone https://aur.archlinux.org/pamac-aur.git
          cd pamac-aur
           makepkg -si --noconfirm
            cd ..

reboot