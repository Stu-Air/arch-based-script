#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

mkdir ~/.appimages

PKGS=(

    # TERMINAL UTILITIES --------------------------------------------------

    'etcher'                  # Disk Creator
    
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    cp /mnt/Media/AppImages/"$PKG".AppImage ~/.appimage
done

chmod a+x ~/.appimages 

echo
echo "Done!"
echo


