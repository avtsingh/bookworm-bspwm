#!/bin/sh

sudo apt install -y bspwm suckless-tools sxhkd polybar picom dunst rofi alacritty build-essential

mkdir -p ~/.config/{bspwm,sxhkd,dunst,polybar}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Added packages
sudo apt install -y xorg xinput

# Fonts
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller gvfs-backends thunar-media-tags-plugin 

# Sound
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Printing
sudo apt install -y cups system-config-printer simple-scan

# protocols
sudo apt install acpi acpid avahi-daemon dialog
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Required packages
sudo apt install neovim vim-scripts neofetch firefox grim slurp imv bc libreoffice thunderbird cups cups-bsd cups-pdf libreoffice-lightproof-en chromium heif-gdk-pixbuf timeshift mixxx inkscape gimp bleachbit vlc vlc-plugin-pipewire 

sudo systemctl enable ly
sudo systemctl enable cups



