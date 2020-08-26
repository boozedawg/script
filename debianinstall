#initial setup

deb http://archive.raspbian.org/mate stretch main

sudo apt update

sudo apt upgrade

sudo apt install git

mkdir /setup

git clone --recursive https://github.com/thestinger/termite.git /setup

git clone https://github.com/boozedawg/dotfiles.git /setup

mv /setup/bashrc ~/.bashrc

mv /setup/sh ~/.config

mv /setup/termite ~/.config

#install my commonly used applications

sudo apt install neofetch neovim gparted openvpn network-manager

sudo apt install qemu qemu-kvm virt-manager libvirt-daemon

sudo apt install lightdm mate-desktop-environment mate-core

sudo apt install cifs-utils samba ntfs-3g 

sudo apt install arc-theme

#install termite

cd termite
make
sudo make install

#change the desktop environment

sudo update-alternatives --config x-session-manager
