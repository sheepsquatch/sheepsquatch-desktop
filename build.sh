#!/bin/bash

./bootstrap
./configure --prefix=/usr --sysconfdir=/etc --libdir=/usr/lib64
make
sudo make install
echo "Installing Tint2 Theme...."
mkdir ~/.config/tint2/
## Install Tint2 Theme
cp sheepsquatch.tint2rc ~/.config/tint2/tint2rc
## Compton
cp compton.conf ~/.config/compton.conf
## Install Menu theme
echo "Installing Start Menu Theme...."
mkdir ~/.config/jgmenu
cp sheepsquatchJGRC ~/.config/jgmenu/jgmenurc
echo "Creating ~/sheep/ dir...."
## Create Sheep Dir
mkdir ~/sheep/
echo "Installing default wallpapers...."
## Set Original G wallpaper
cp ./wallpapers/* ~/sheep/
feh --bg-scale ~/sheep/wallpaper
echo "Copying starticon.... (doot doot...)"
## Copy starticon
cp sheep/actions/.egg.mp3 ~/sheep/.egg.mp3
cp sheep.svg ~/sheep/sheep.svg
##echo "Installing Customizations to openbox...."
## Install openbox customization
mkdir -p ~/.config/sheep/
cp ./data/autostart/autostart ~/.config/openbox/autostart
echo "Hooking up LOGOUT function to jgmenu...."
sudo cp sheeplogout.desktop /usr/share/applications/
clear
echo "You are done installing sheepsquatch!"
