echo	
echo	
echo	Initial setup
echo
echo
echo 	llllllllllll
echo	llUPDATINGll
echo	llUPGRADESll
echo	llllllllllll
echo
echo

sudo apt update

sudo apt upgrade

sudo apt install git

sudo rm -r /setup
sudo mkdir /setup
sudo rm -r /termite
sudo mkdir /termite
sudo git clone --recursive https://github.com/thestinger/termite.git /termite

sudo git clone --recursive https://github.com/boozedawg/dotfiles.git /setup

sudo mv /home/pi/.bashrc /home/pi/.bashrc2
sudo cp /setup/.bashrc /home/pi/.bashrc

sudo rm -r /home/pi/.config/sh
sudo mv /setup/sh /home/pi/.config/

sudo rm -r /home/pi/.config/termite
sudo mv /setup/termite /home/pi/.config/

sleep 3

echo INSTALLING COMMON APPLICATIONS
echo


sleep 3
echo
echo
echo INSTALLING
echo neofetch neovim gparted openvpn network-manager ntfs-3g
echo
echo

sudo apt install neofetch neovim gparted openvpn network-manager ntfs-3g

sleep 3

echo
echo QEMU/KVM with virt-manager
echo

sudo apt install qemu qemu-kvm virt-manager libvirt-daemon
sudo systemctl enable libvirtd

sleep 3

echo
echo Mate Desktop
echo

sudo apt install mate-desktop-environment mate-core

sleep 3

echo
echo light dm
echo
sudo apt install lightdm

sleep 3

echo
echo cifs-utils samba 
echo
sudo apt install cifs-utils samba

sleep 3

echo
echo arc-theme
echo
sudo apt install arc-theme

sleep 3

echo
echo termite

cd termite
sudo make
sudo make install

echo
echo CHANGING THE DESKTOP
echo

sudo update-alternatives --config x-session-manager
