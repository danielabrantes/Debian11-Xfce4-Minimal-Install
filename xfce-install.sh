#!/usr/bin/env bash

## configure and install minimal xfce desktop environment

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

cat ./xsessionrc >> /home/$SUDO_USER/.xsessionrc
chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.xsessionrc

apt install -y libxfce4ui-utils
apt install -y thunar
#apt install -y xfce4-appfinder
apt install -y xfce4-panel
apt install -y xfce4-pulseaudio-plugin
#apt install -y xfce4-whiskermenu-plugin
apt install -y xfce4-session
apt install -y xfce4-settings
apt install -y xfce4-terminal
apt install -y xfconf
apt install -y xfdesktop4
apt install -y xfwm4
apt install -y adwaita-qt
apt install -y qt5ct 

echo 
echo xfce install complete, please reboot and issue 'startx'
echo

