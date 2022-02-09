#!/bin/bash

echo
echo "DESKTOP SPECIFIC SOFTWARE"
echo

  # Installing desktop Enviorment
    
    sudo pacman -Sy --noconfirm gnome-desktop			# Desktop 
    sudo pacman -Sy --noconfirm gnome-session
    sudo pacman -Sy --noconfirm gnome-control-center
    sudo pacman -Sy --noconfirm gnome-shell-extensions	        #
    sudo pacman -Sy --noconfirm gnome-terminal			# Terminal
    sudo pacman -Sy --noconfirm nautilus		        # File Manager
    
    sudo pacman -Sy --noconfirm gedit				# Text Editor
    sudo pacman -Sy --noconfirm file-roller			# Archive Manager
    sudo pacman -Sy --noconfirm eog				# Image Viewer
    sudo pacman -Sy --noconfirm gnome-tweaks			# Theme manager
    								# Screenshot Tool
    sudo pacman -Sy --noconfirm evince				# Pdf Viewer
	

#    sudo pacman -Sy --noconfirm gnome-bluetooth 		#

     #gnome-software-plugin-flatpak
    

    # Installing Login Manager/Display Manager
    sudo pacman -S --noconfirm gdm   
    sudo systemctl enable gdm
   
   
   # Intalling themes
   mkdir ~/Desktop/apps
   cd ~/Desktop/apps
    
   # Matcha Theme
     git clone https://github.com/vinceliuice/Matcha-gtk-theme.git
       cd Matcha-gtk-theme
        sh ./install.sh
         cd ..

   # Installing Icon themes
    #Qogir-Icons
    git clone https://github.com/vinceliuice/Qogir-icon-theme.git
     cd Qogir-icon-theme
      sh ./install.sh
       cd ..
    
    # tela-circle-Dark
    git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
     cd Tela-circle-icon-theme
      sh ./install.sh -d $HOME/.local/share/icons
       cd .. 
      
   #  Breeze Cursor
   sudo pamac build --no-confirm xcursor-breeze
   
#echo " changing gdm to gnome stock look"
#echo 1 | sudo update-alternatives --config gdm3-theme.gresource # changing #login screen 


echo "Disable Wayland"
echo "# Disable Wayland
[daemon]
WaylandEnable=false " | sudo tee -a /etc/gdm/custom.conf

   
# --------------- Gnome Extensions --------------------------
     mkdir ~/Desktop/extensions
      cd ~/Desktop/extensions
       mkdir ~/.local/share/gnome-shell/extensions
#       extensions build tools
sudo pacman -Sy --noconfirm meson jq typescript sassc


 ######  Desktop icons New Generation ############
  git clone https://gitlab.com/rastersoft/desktop-icons-ng.git
   cd desktop-icons-ng
    sudo pacman -S --noconfirm meson ninja
     meson --prefix=$HOME/.local/ --localedir=share/gnome-shell/extensions/ding@rastersoft.com/locale .build
      ninja -C .build install
#  sh ./local_install.sh
# sh ./export_zip.sh
#  unzip ding@rastersoft.com.zip -d ~/.local/share/gnome-shell/extensions/ding@rastersoft.com
#  chmod +x ~/.local/share/gnome-shell/extensions/ding@rastersoft.com/ding.js
  cd ..
  sudo cp ~/.local/share/gnome-shell/extensions/ding@rastersoft.com/schemas/org.gnome.shell.extensions.ding.gschema.xml /usr/share/glib-2.0/schemas/

 #####   Desktop icons (Same as ubuntu)
#    git clone https://gitlab.gnome.org/World/ShellExtensions/desktop-icons.git
#    cd desktop-icons
#      meson --prefix=$HOME/.local/ --localedir=share/gnome-shell/extensions/desktop-#icons@csoriano/locale .build
#       ninja -C .build install
#        cd ..
#         sudo cp ~/.local/share/gnome-shell/extensions/desktop-icons@csoriano/schemas/org.gnome.shell.extensions.desktop-icons.gschema.xml /usr/share/glib-2.0/schemas/

 #####   Blur My Shell
    git clone https://github.com/aunetx/blur-my-shell
     cd blur-my-shell
      make install
       cd ..
        sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/

 ######  Top icons (KstatusNotiferItem)
   git clone https://github.com/ubuntu/gnome-shell-extension-appindicator.git
    cd gnome-shell-extension-appindicator
     meson gnome-shell-extension-appindicator
      ninja -C gnome-shell-extension-appindicator install
       sudo pacman -Sy --noconfirm libappindicator-gtk2 libappindicator-gtk3
        sudo cp ~/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas/org.gnome.shell.extensions.appindicator.gschema.xml /usr/share/glib-2.0/schemas/

 ##### POP OS TILING
   git clone https://github.com/pop-os/shell.git
    cd shell
     Echo "n" | make local-install
      cd ..
       
 ##### ARC MENU
   git clone --single-branch --branch 'gnome-40' https://gitlab.com/arcmenu/ArcMenu.git   
   git clone https://gitlab.com/arcmenu/ArcMenu.git
    cd ArcMenu
     make install
      cd ..
       sudo pacman -Sy --noconfirm gnome-menus			# needed for Arc Menu
        sudo cp ~/.local/share/gnome-shell/extensions/arcmenu@arcmenu.com/schemas/org.gnome.shell.extensions.arcmenu.gschema.xml /usr/share/glib-2.0/schemas/
    
 ##### Impatience
   git clone https://github.com/timbertson/gnome-shell-impatience.git
    mkdir ~/.local/share/gnome-shell/extensions/impatience@gfxmonk.net
     cp -r gnome-shell-impatience/impatience/* ~/.local/share/gnome-shell/extensions/impatience@gfxmonk.net
       sudo cp ~/.local/share/gnome-shell/extensions/impatience@gfxmonk.net/schemas/org.gnome.shell.extensions.net.gfxmonk.impatience.gschema.xml /usr/share/glib-2.0/schemas/

 ###### dash to dock
git clone --single-branch --branch 'ewlsh/gnome-40' https://github.com/ewlsh/dash-to-dock.git
#   git clone https://github.com/micheleg/dash-to-dock.git
    cd dash-to-dock/
     make install # No need for schema build
      cd ..
       sudo cp ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml /usr/share/glib-2.0/schemas/

 ###### Dash to panel
    git clone https://github.com/home-sweet-gnome/dash-to-panel.git
     cd dash-to-panel/
      make install
       cd ..
        sudo cp ~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml /usr/share/glib-2.0/schemas/

 ##### Caffeine
    git clone https://github.com/caffeine-ng/caffeine-ng.git
     cd caffeine-ng
      python setup.py build
       sudo python setup.py install
        
#       glib-compile-schemas --strict --targetdir=caffeine@patapon.info/schemas/ caffeine@patapon.info/schemas
#        cp -r caffeine@patapon.info ~/.local/share/gnome-shell/extensions
#         cd ..
#          sudo cp ~/.local/share/gnome-shell/extensions/caffeine@patapon.info/schemas/org.gnome.shell.extensions.caffeine.gschema.xml /usr/share/glib-2.0/schemas/

 ###### Screenshot tool
    git clone https://github.com/OttoAllmendinger/gnome-shell-screenshot.git
     cd gnome-shell-screenshot
      make
       make install
        cd ..
         sudo cp ~/.local/share/gnome-shell/extensions/gnome-shell-screenshot@ttll.de/schemas/org.gnome.shell.extensions.screenshot.gschema.xml /usr/share/glib-2.0/schemas/

 ###### Nordvpn
    git clone https://github.com/AlexPoilrouge/NordVPN-connect.git
     cd NordVPN-connect
      ./setup.sh
	cd ../

#------------------ Schemas for Extensions ---------------------
   sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
    cd ../../


#if . /etc/os-release; echo "$ID_LIKE" = arch
#then


#else

#fi


echo
echo "REMOVING SOFTWARE"
echo

    # REMOVING --------------------------------------------------

#    sudo pacman -Rs --noconfirm gnome-books
#    sudo pacman -Rs --noconfirm gnome-boxes
#    sudo pacman -Rs --noconfirm gnome-calculator
#    sudo pacman -Rs --noconfirm gnome-calendar
#    sudo pacman -Rs --noconfirm gnome-characters
#    sudo pacman -Rs --noconfirm gnome-clocks
#    sudo pacman -Rs --noconfirm gnome-contacts
#    sudo pacman -Rs --noconfirm simple-scan
#    sudo pacman -Rs --noconfirm gnome-documents
#    sudo pacman -Rs --noconfirm gnome-font-viewer
#    sudo pacman -Rs --noconfirm gnome-logs
#    sudo pacman -Rs --noconfirm gnome-maps
#    sudo pacman -Rs --noconfirm gnome-music
#    sudo pacman -Rs --noconfirm gnome-photos
#    sudo pacman -Rs --noconfirm gnome-software
#    sudo pacman -Rs --noconfirm totem
#    sudo pacman -Rs --noconfirm gnome-weather
#    sudo pacman -Rs --noconfirm epiphany
#    sudo pacman -Rs --noconfirm baobab
#    sudo pacman -Rs --noconfirm seahorse
#    sudo pacman -Rs --noconfirm gucharamap
#    sudo pacman -Rs --noconfirm geary
#    sudo pacman -Rs --noconfirm popsicle-gtk
#    sudo pacman -Rs --noconfirm firefox

#    sudo pacman -Rdd --noconfirm hwloc   # Move to hide section
#    sudo pacman -Rdd --noconfirm yelp    # Move to hide section

# HIDING NEEDED BUT NEVER CLICKED --------------------------------------------------

    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.gnome.FileRoller.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-livepatch.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-drivers.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.gnome.PowerStats.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-system-monitor.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-gtk.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-ubuntu-panel.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/update-manager.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-session-properties.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-language-selector.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-usage-panel.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gucharmap.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/avahi-discover.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/bssh.desktop
    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/bvnc.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/qv4l2.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/qvidcap.desktop

#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/libreoffice-base.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/libreoffice-calc.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/libreoffice-draw.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/libreoffice-impress.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/libreoffice-math.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/libreoffice-writer.desktop


#echo "NoDisplay=true" | sudo tee -a /usr/lib/libreoffice/share/xdg/base.desktop


echo
echo "Done!"
echo


#sh ./02-GnomeCleanup.sh
#sh ./02-gsettings.sh
