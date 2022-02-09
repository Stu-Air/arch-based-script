#!/bin/bash

gtktheme='Matcha-dark-azul' #'Materia-compact'
icontheme='Qogir-dark'
shelltheme='Matcha-dark-azul' #'Materia-dark-compact'
cursortheme='Breeze'
wallpaper='/mnt/Media/home/Pictures/wallpaper.png'     # make this the link to the wallpapers folder and rename wallpapers



# SWITCHING TO ZSH
#chsh -s $(which zsh)

#------------------- GNOME SHELL -------------------#
gsettings set org.gnome.shell disabled-extensions "['ubuntu-dock@ubuntu.com','desktop-icons@csoriano']"
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'ding@rastersoft.com', 'impatience@gfxmonk.net', 'appindicatorsupport@rgcjonas.gmail.com', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'blur-my-shell@aunetx', 'gnome-shell-screenshot@ttll.de']"
gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'chromium.desktop', 'spotify.desktop', 'chrome-emefpkhgihlhfddcjfghpndaeliajgjj-Default.desktop', 'chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default.desktop']"
gsettings set org.gnome.desktop.interface clock-format 12h
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb')]"

# --------------------- NAUTILUS -----------------------#
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
gsettings set org.gnome.nautilus.preferences click-policy 'double'
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small'

#-------------------- SETTING THEMES ------------------------#
gsettings set org.gnome.desktop.interface gtk-theme $gtktheme
gsettings set org.gnome.desktop.interface icon-theme $icontheme
gsettings set org.gnome.shell.extensions.user-theme name $shelltheme
gsettings set org.gnome.desktop.interface cursor-theme $cursortheme
gsettings set org.gnome.desktop.background picture-uri $wallpaper

#-------------------- FONT --------------------# 
gsettings set org.gnome.desktop.interface font-name 'Sans Regular 11'
gsettings set org.gnome.desktop.interface document-font-name 'Sans Regular 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGS NF Regular 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Sans Bold 11'

#----------------- TERMINAL -----------------------#
#gsettings set org.gnome.Terminal.ProfilesList default ['']




# ARCMENU

# BLUR MY SHELL
gsettings set org.gnome.shell.extensions.blur-my-shell blur-dash false
gsettings set org.gnome.shell.extensions.blur-my-shell blur-panel false
gsettings set org.gnome.shell.extensions.blur-my-shell dash-opacity '12'
gsettings set org.gnome.shell.extensions.blur-my-shell brightness '0.4'

#------------------  DASH TO DOCK SETTINGS ------------------#
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true


# DASH TO PANEL 

# Nothing really to do until setting up gnome desktop switcher

#-----------------  DESKTOP ICONS ------------------------#
gsettings set org.gnome.shell.extensions.ding show-home false
gsettings set org.gnome.shell.extensions.ding show-trash false
gsettings set org.gnome.shell.extensions.ding icon-size 'small'
gsettings set org.gnome.shell.extensions.ding show-volumes false
gsettings set org.gnome.shell.extensions.ding show-drop-place false
gsettings set org.gnome.shell.extensions.ding add-volumes-opposite false

#------------------  SPEED UP GNOME ----------------------#
gsettings set org.gnome.shell.extensions.net.gfxmonk.impatience speed-factor '0.50'

# POP SHELL
#gsettings set org.gnome.shell.extensions.pop-shell tile-by-default false
#gsettings set org.gnome.shell.extensions.pop-shell gap-inner '1'
#gsettings set org.gnome.shell.extensions.pop-shell gap-outer '1'
#gsettings set org.gnome.shell.extensions.pop-shell hint-color-rgba 'rgb(52,125,219)'
#gsettings set org.gnome.shell.extensions.pop-shell active-hint true


#SCREENSHOT TOOL



# -------------- Terminal shortcut ----------------#
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name']"
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding']"
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name Terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command gnome-terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt>T'

# -------------- Launcher Folder -------------------#
gsettings set org.gnome.desktop.app-folders folder-children "['']" # Remove all folders
gsettings reset org.gnome.shell app-picker-layout

#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Game/ name 'TV'
#gsettings set org.gnome.desktop.app-folders folder-children "[..., 'TV']"
#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/TV/ name 'TV'
#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/TV/ translate true
#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/TV/ apps "['chrome-dbgkmmbkdmkbceaoijkocgfmlghajaik-Default.desktop', 'chrome-bdghpjoonamidjbamhnnggcceljhjmpj-Default.desktop', 'chrome-jahnifecgkhjbcbjfkplnplfkcebgafc-Default.desktop', 'chrome-enlkekmehifkbcpadgpbhjcepnannhml-Default.desktop', 'chrome-eppojlglocelodeimnohnlnionkobfln-Default.desktop', 'chrome-lfheiaeoljbhacojcpijifmiaagpmjha-Default.desktop']"
