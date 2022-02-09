#!/bin/bash



echo
echo "DESKTOP SPECIFIC SOFTWARE"
echo

# Installing desktop Enviorment
    sudo pacman -Sy --noconfirm xfce4
    sudo pacman -Sy --noconfirm lightdm
    sudo pacman -Sy --noconfirm lightdm-gtk-greeter
    sudo pacman -Sy --noconfirm lightdm-gtk-greeter-settings
    sudo pacman -Sy --noconfirm light-locker
    sudo systemctl enable lightdm 

    sudo pacman -Sy --noconfirm xfce4-goodies
    sudo pacman -Sy --noconfirm xfce4-terminal
    sudo pacman -Sy --noconfirm xfce4-screenshooter
    sudo pacman -Sy --noconfirm xarchiver
    sudo pacman -Sy --noconfirm xfce4-screensaver
#    sudo $install ark
#    sudo $install gwenview


sudo sed -i 's/#logind-check-graphical=false/logind-check-graphical=true/g' /etc/lightdm/lightdm.conf

echo
echo "Done!"
echo

# ----- THEMES ----- #
sudo pamac build --no-confirm flat-remix-gtk
 


# ----- ICONS ----- #	
sudo pamac build --no-confirm flat-remix



#ADD THEMES DOWNLOADED HERE 



echo
echo "REMOVING SOFTWARE"
echo

    # REMOVING --------------------------------------------------



#avahi                     avahi-discover.desktop
#lstopo                    lstopo.desktop
#hp device                 hplip.desktop
#hp uiscan                 hp-uiscan.desktop
#kwallet                   kwalletmanager5-kwalletd.desktopm
#manjaro userguide         manjaro-documention.dektop
#qt assitdent              assistant.desktop
#qt designer               designer.desktop
#qt lingist                linguist.desktop
#qt qdbusviewer            qtbusviewer.desktop
#qt vl42 totest utility    qv4l2.desktop
#qt vl42 video capture     qvidcap.desktop
#software token            stoken-gui.desktop
#software token (small)    stoken-gui-small.desktop
#steam                     steam.desktop
#userfeedback console      UserFeedbackConsole.desktop
#manjaro setting manager   manjaro-settings-manager.desktop
#manjaro notify
#help                      org.kde.help.desktop




#    sudo pacman -Rs --noconfirm konversation
#    sudo pacman -Rs --noconfirm firefox
#    sudo pacman -Rs --noconfirm filelight
#    sudo pacman -Rs --noconfirm k3b
#    sudo pacman -Rs --noconfirm manjaro-hello
#    sudo pacman -Rs --noconfirm skanlite
#    sudo pacman -Rs --noconfirm vlc
#    sudo pacman -Rs --noconfirm appimagelauncher
#    sudo pacman -Rs --noconfirm kget
#    sudo pacman -Rs --noconfirmksystemlog
#    sudo pacman -Rs --noconfirm qbittorrent
#    sudo pacman -Rs --noconfirm kcalc
#    sudo pacman -Rs --noconfirm kfind
#    sudo pacman -Rs --noconfirm kinfocenter
#    sudo pacman -Rs --noconfirm yakuake
#    sudo pacman -Rs --noconfirm discover
#    sudo pacman -Rs --noconfirm plasma-sdk

# HIDING NEEDED BUT NEVER CLICKED --------------------------------------------------

#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.gnome.FileRoller.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-livepatch.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-drivers.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.gnome.PowerStats.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-system-monitor.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-gtk.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-ubuntu-panel.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/update-manager.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-session-properties.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-language-selector.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-usage-panel.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gucharmap.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/avahi-discover.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/bssh.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/bvnc.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/qv4l2.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/qvidcap.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/UserFeedbackConsole.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.kde.plasma.emojier.destop
