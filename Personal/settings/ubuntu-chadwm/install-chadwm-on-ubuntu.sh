#!/bin/bash
# set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
# Website   : https://www.arcolinux.info
# Website   : https://www.arcolinux.com
# Website   : https://www.arcolinuxd.com
# Website   : https://www.arcolinuxb.com
# Website   : https://www.arcolinuxiso.com
# Website   : https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Installing Chadwm on Ubuntu 24.04"
echo "################################################################"
tput sgr0
echo

echo
tput setaf 2
echo "################################################################"
echo "###### Installing packages"
echo "################################################################"
tput sgr0
echo

sudo apt install -y alacritty
sudo apt install -y arandr
sudo apt install -y arc-theme
sudo apt install -y btop
sudo apt install -y build-essential
sudo apt install -y dmenu
sudo apt install -y feh
sudo apt install -y font-manager
sudo apt install -y fonts-font-awesome
sudo apt install -y libimlib2-dev
sudo apt install -y libx11-dev
sudo apt install -y libxft-dev
sudo apt install -y libxinerama-dev
sudo apt install -y lxappearance
sudo apt install -y nitrogen
sudo apt install -y picom
sudo apt install -y rofi
sudo apt install -y thunar
sudo apt install -y sxhkd
sudo apt install -y variety

git clone https://github.com/arcolinux/arcolinux-chadwm  /tmp/
cd /tmp/arcolinux-chadwm

sudo cp /usr/bin/exec-chadwm /usr/bin
sudo cp /usr/share/xsessions/chadwm.desktop /usr/share/xsessions

cp -r /etc/skel/.bin ~
cp -r /etc/skel/.config ~

cd ~/.config/arco-chadwm/chadwm
sudo make install


echo
tput setaf 6
echo "################################################################"
echo "###### Chadwm is installed - reboot"
echo "################################################################"
tput sgr0
echo