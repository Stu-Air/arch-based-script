#!/bin/bash

# Change Theme
#xfconf-query -c xsettings -p /Net/ThemeName -s Adwaita-dark

# remove bottom panel
#xfconf-query -c xfce4-panel -p /plugins/plugin-7 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-8 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-9/items -r 
#xfconf-query -c xfce4-panel -p /plugins/plugin-9 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-10/items -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-10 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-11/items -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-11 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-12/items -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-12 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-13 -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-14/base-directory -r
#xfconf-query -c xfce4-panel -p /plugins/plugin-14 -r
#xfconf-query -c xfce4-panel -p /panels/panel-2 -r -R
#xfconf-query -c xfce4-panel -p /panels -t int -a -s 1

xfconf-query -c xfce4-panel -p /panels -r -R
xfconf-query -c xfce4-panel -p /plugins -r -R

xfconf-query -n -a -c xfce4-panel -p /panels -t int -s 0

xfconf-query --create -c xfce4-panel -p /panels/panel-0/plugin-ids -t int -t int -t int -t int -t int -t int -t int -t int -s 1 -s 2 -s 3 -s 4 -s 5 -s 6 -s 7 -s 8 #-s 9

xfconf-query -n -c xfce4-panel -p /panels/panel-0/length -t int -s 100
xfconf-query -n -c xfce4-panel -p /panels/panel-0/size -t int -s 24
xfconf-query -n -c xfce4-panel -p /panels/panel-0/position -t string -s "p=6;x=0;y=0"
xfconf-query -n -c xfce4-panel -p /panels/panel-0/position-locked -t bool -s true

xfconf-query -n -c xfce4-panel -p /plugins/plugin-1 -t string -s whiskermenu
xfconf-query -n -c xfce4-panel -p /plugins/plugin-2 -t string -s tasklist
xfconf-query -n -c xfce4-panel -p /plugins/plugin-3 -t string -s separator
xfconf-query -n -c xfce4-panel -p /plugins/plugin-4 -t string -s systray
xfconf-query -n -c xfce4-panel -p /plugins/plugin-5 -t string -s notification-plugin
xfconf-query -n -c xfce4-panel -p /plugins/plugin-6 -t string -s pulseaudio
xfconf-query -n -c xfce4-panel -p /plugins/plugin-7 -t string -s power-manager-plugin
xfconf-query -n -c xfce4-panel -p /plugins/plugin-8 -t string -s clock
#xfconf-query -n -c xfce4-panel -p /plugins/plugin-9 -t string -s xfce4-power-manager

xfconf-query -c xfce4-panel -p /plugins/plugin-3/expand -t bool -s "true" --create
xfconf-query -c xfce4-panel -p /plugins/plugin-3/style -t unsignedint -s "0" --create



#xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/<Super> -t string -s "xfce4-popup-whiskermenu"

#<property name="&lt;Super&gt" type="string" value="xfce4-popup-whiskermenu"/>


#create above and style to activate

# ----- TERMINAL THEMES ----- #
#ADD TERMINALRC HERE TO CHANGE FONT




xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/<Super> -t string -s "xfce4-popup-whiskermenu"













