#!/bin/sh

# Sway installation
sudo apt install sway swayidle swaylock xdg-desktop-portal-wlr waybar wofi

# Added packages
sudo apt install wayland-protocols xwayland build-essential mako-notifier

# Networking etc
sudo apt install lxqt-policykit network-manager network-manager-gnome

# Thunar
sudo apt install thunar thunar-archive-plugin thunar-volman file-roller

# protocols
sudo apt install acpi acpid avahi-daemon gvfs-backends libnotify-dev
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Dependencies for ly
sudo apt install libpam0g-dev libxcb-xkb-dev

# Required packages
sudo apt install neovim vim-scripts neofetch firefox-esr grim slurp imv bc libreoffice thunderbird cups cups-bsd cups-pdf libreoffice-lightproof-en chromium heif-gdk-pixbuf timeshift mixxx inkscape gimp bleachbit vlc vlc-plugin-pipewire 

# ly install
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
sudo systemctl enable ly



