#!/bin/bash

#install packages
sudo pacman -Sycd dev --noconfirm docker git vim wget curl base-devel htop code dbeaver vitualbox gimp inkscape latte-dock libreoffice-still

#docker config
sudo usermod -aG docker $USER

#install yay
cd /tmp
git clone https://aur.archlinux.org/yay-git.git
cd yay-git && echo Y | makepkg -si
cd /tmp && rm -rf yay-git

#customize kde-plasma
echo Y | yay -S --nocleanmenu --nodiffmenu sierrabreeze-kwin-decoration-git

#install google-chrome
echo Y | yay -S --nocleanmenu --nodiffmenu google-chrome

#install postman
echo Y | yay -S --nocleanmenu --nodiffmenu postman-bin

#install mongodb-compass
echo Y | yay -S --nocleanmenu --nodiffmenu mongodb-compass