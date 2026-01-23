#!/bin/sh

sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils --noconfirm
sudo pacman -S python python-pip base-devel nmap --noconfirm
sudo pacman -S xorg xorg-xinit pulseaudio pulseaudio-alsa  brightnessctl --noconfirm
sudo pacman -S bspwm sxhkd --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

sudo pacman -S kitty firefox feh ibus ibus-anthy maim rofi --noconfirm
sudo pacman -S adobe-source-han-serif-jp-fonts papirus-icon-theme gtk3 imagemagick nerd-fonts noto-fonts ttf-font-awesome --noconfirm
sudo pacman -S thunar tumbler gvfs thunar-volman
sudo pacman -S lxappearance arc-gtk-theme

yay polybar
yay ttf-iosevka
yay ttf-icomoon-feather-git

sudo pacman -S python-pywal --noconfirm

mkdir -p ~/.config

cp -r rofi ~/.config
cp -r sxhkd ~/.config
cp -r bspwm ~/.config
cp -r polybar ~/.config
cp -r "gtk-3.0" ~/.config
cp -r wal ~/.config
cp -r nvim ~/.config
cp -r kitty ~/.config
cp -r nvim ~/.config

cp .bashrc ~
cp .vimrc ~
cp .xinitrc ~

mkdir -p ~/w
cp bg.jpg ~/w/bg.jpg
