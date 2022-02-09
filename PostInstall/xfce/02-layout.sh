#!/bin/bash

gtktheme='Arc-Darker' #'Materia-compact'
icontheme='ePapirus'
shelltheme='Arc-Dark' #'Materia-dark-compact'
cursortheme='Breeze' # 'Yaru'
wallpaper=/mnt/Media/Pictures/wallpapers/wallpaper.png     # make this the link to the wallpapers folder and rename wallpapers

#------------------- XFCE -------------------#
xfconf-query -c xsettings -p /Net/ThemeName -s Arc-Dark
xfconf-query -c xfwm4 -p /general/theme -s Arc-Darker
xfconf-query -c xfwm4 -p /general/rounded_corners_radius -s 4
xfconf-query -c xsettings -p /Net/IconThemeName -s ePapirus
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze



#to do
# app launchers  google-chrome.desktop  spotify.desktop  chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default.desktop chrome-emefpkhgihlhfddcjfghpndaeliajgjj-Default.desktop
# clock-format 12h
# show-battery-percentage true
# night-light-enabled true
# natural-scroll true
# two-finger-scrolling-enabled true
# disabled-on-external-mouse
# clock-show-date true
# sleep-inactive-battery-type 'nothing'
# sleep-inactive-ac-type 'nothing'


# ----- LAYOUTS

# panel size
# Autohide
# panel position
# intellihide panel
# click-action 'minimize'
# show-mounts false
# show-trash false
# show-apps-at-top true
# force-straight-corner true

# ----- Desktop

# show-home false
# show-trash false
# icon-size 'small'
# show-volumes false
# show-drop-place false
# add-volumes-opposite false

# ----- terminal 
# Add Dark theme


# ----- EXTRAS 
# Super button set to whiskermenu super L