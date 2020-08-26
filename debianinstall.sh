echo initial setup

sudo su

apt update

apt upgrade

apt install git

mkdir /setup

git clone --recursive https://github.com/thestinger/termite.git /setup

git clone https://github.com/boozedawg/dotfiles.git /setup

mv /setup/bashrc ~/.bashrc

mv /setup/sh ~/.config

mv /setup/termite ~/.config

echo install my commonly used applications

echo neofetch neovim gparted openvpn network-manager ntfs-3g
apt install neofetch neovim gparted openvpn network-manager ntfs-3g

echo QEMU/KVM with virt-manager
apt install qemu qemu-kvm virt-manager libvirt-daemon
systemctl enable libert.daemon

echo Mate Desktop
apt install mate-desktop-environment mate-core

echo light dm
apt install lightdm gnome-desktop

echo cifs-utils samba 
apt install cifs-utils samba

echo arc-theme
apt install arc-theme

echo termite

cd termite
make
make install

echo change the desktop environment

update-alternatives --config x-session-manager
