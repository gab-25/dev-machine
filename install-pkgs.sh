#!/bin/bash

#install packages
sudo pacman -S --noconfirm docker vim htop code dbeaver virtualbox gimp inkscape latte-dock libreoffice-still

#docker config
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker

#install google-chrome
echo Y | yay -S --nocleanmenu --nodiffmenu google-chrome

#install postman
echo Y | yay -S --nocleanmenu --nodiffmenu postman-bin

#install mongodb-compass
echo Y | yay -S --nocleanmenu --nodiffmenu mongodb-compass