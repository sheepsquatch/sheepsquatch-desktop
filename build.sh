#!/bin/bash

./bootstrap
./configure --prefix=/usr --sysconfdir=/etc --libdir=/usr/lib64
make
sudo make install
echo "Installing Tint2 Theme...."
sudo mkdir /etc/sheep/
## Install Tint2 Theme
sudo cp sheepsquatch.tint2rc /etc/sheep/tint2rc
## Compton
sudo cp compton.conf /etc/sheep/compton.conf
## Install Menu theme
echo "Installing Start Menu Theme...."
sudo cp sheepsquatchJGRC /etc/sheep/jgrc
## Create Wall folder
sudo mkdir /etc/sheep/walls/
echo "Installing default wallpapers...."
## Set Original G wallpaper
sudo cp ./wallpapers/* /etc/sheep/walls/
feh --bg-scale /etc/sheep/walls/wall
echo "Copying starticon.... (doot doot...)"
## Copy starticon
sudo cp sheep/actions/.egg.mp3 /etc/sheep/.egg.mp3
sudo cp sheep.svg /etc/sheep/sheep.svg
##echo "Installing Customizations to openbox...."
echo "Hooking up LOGOUT function to jgmenu...."
sudo cp sheeplogout.desktop /usr/share/applications/
clear
echo "You are done installing sheepsquatch!"
