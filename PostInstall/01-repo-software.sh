#! /bin/bash

echo
echo "INSTALLING SOFTWARE"
echo

# ----- SYSTEM THINGS ----- #
    sudo pacman -Sy --noconfirm gufw                  # Firewall manager
    sudo pacman -Sy --noconfirm htop                  # Process viewer
    sudo pacman -Sy --noconfirm neofetch              # Shows system info when you launch terminal
    sudo pacman -Sy --noconfirm autofs                # Auto-mounter
    sudo pacman -Sy --noconfirm exfat-utils           # Mount exFat drives
    sudo pacman -Sy --noconfirm ntfs-3g               # Open source implementation of NTFS file system
    sudo pacman -Sy --noconfirm fuse2                 # needed for Rclone
    sudo pacman -Sy --noconfirm tlp                   # Helps laptop battery
    sudo pacman -Sy --noconfirm bash-completion       # Tab completion for BASH
    sudo pacman -Sy --noconfirm zsh                   # ZSH Shell terminal
    sudo pacman -Sy --noconfirm zsh-completions       # Tab completion for ZSH




    sudo pacman -Sy --noconfirm rclone                # Cloud Based Sync tool
    sudo pacman -Sy --noconfirm rsync                 # Remote file sync utility
    sudo pacman -Sy --noconfirm cronie                # needed for Timeshift
    sudo pacman -Sy --noconfirm mpv                   # Multimedia video player
    sudo pacman -Sy --noconfirm transmission-gtk      # Torrent downloader
    sudo pacman -Sy --noconfirm thunderbird           # Email Client
    sudo pacman -Sy --noconfirm libreoffice-fresh     # Office Suite
    sudo pacman -Sy --noconfirm signal-desktop        # signal messaging


# ----- EXTRA SOFTWARE ----- #
#    sudo pacman -Sy --noconfirm gimp                  # GNU Image Manipulation Program
#    sudo pacman -Sy --noconfirm inkscape              # Vector image creation app
#    sudo pacman -Sy --noconfirm kdenlive              # Video Production
 
# ----- SWITCH TO ZSH AND INSTALL PROMPT THEME ----- #
#     chsh -s $(which zsh)
#      mkdir .zsh
#      cd ~
#      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
#       echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc














# ----- SETTING UP GUFW FIREWALL ----- #





# ---- SYSTEM ENABLE ----- #
systemctl enable tlp

echo
echo "Done!"
echo
