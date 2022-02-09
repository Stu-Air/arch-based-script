 
#!/bin/bash

echo
echo "INSTALLING AUR/PACKAGES SOFTWARE"
echo

# install --no-confirm (when aur enabled in pamac settings)

    sudo pamac build --no-confirm dropbox                 # Cloud file storage
    sudo pamac build --no-confirm timeshift               # System backup
    sudo pamac build --no-confirm gconf                   # Needed to duckie tv
#    sudo pamac build --no-confirm google-chrome           # Web Browser
    sudo pamac build --no-confirm brave-bin              # Web Browser
    sudo pamac build --no-confirm vscodium-bin           # Code IDE
    sudo pamac build --no-confirm minecraft-launcher      # Minecraft-launcher
#    sudo pamac build --no-confirm nordvpn-bin             # VPN
#    sudo groupadd -r nordvpn
#    sudo gpasswd -a $USER nordvpn
#    systemctl enable nordvpnd

  cd ~/Desktop/apps
   echo "Discord"
    wget https://dl.discordapp.net/apps/linux/0.0.15/discord-0.0.15.tar.gz
     tar -xf discord-0.0.15.tar.gz
      sudo cp -r Discord /usr/share/discord
       sudo chmod a+x /usr/share/discord/Discord
        sudo cp /usr/share/discord/discord.desktop /usr/share/applications/
        

   echo " Duckie TV "
    wget https://github.com/DuckieTV/Nightlies/releases/download/nightly-202011202304/DuckieTV-202011202304-linux-x64.tar.gz
      tar -xf DuckieTV-202011202304-linux-x64.tar.gz
       echo "y" | sudo sh ./setup
        sudo chmod a+x /opt/DuckieTV/DuckieTV
         sudo chmod a+x /opt/DuckieTV/DuckieTV-bin
          cd ..

   echo "ZSH Theme"
    mkdir ~/.zsh
     git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
      echo 'source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
      
echo
echo "Done!"
echo
