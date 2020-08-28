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


echo -e "username: "
read name




echo update & upgrade
sleep 3
sudo apt update
echo
sleep1
sudo apt upgrade
echo
sudo apt install git
echo
sleep 3

echo git cloning
sleep 1

sudo rm -r /setup
sudo mkdir /setup
sudo rm -r /termite
sudo mkdir /termite
sudo git clone --recursive https://github.com/thestinger/termite.git /termite

sudo git clone --recursive https://github.com/boozedawg/dotfiles.git /setup

sudo mv /home/$name/.bashrc /home/$name/.bashrc2
sudo cp /setup/.bashrc /home/$name/.bashrc

sudo rm -r /home/$name/.config/sh
sudo mv /setup/sh /home/$name/.config/

sudo rm -r /home/$name/.config/termite
sudo mv /setup/termite /home/$name/.config/

sleep 3

echo INSTALLING COMMON APPLICATIONS
echo


sleep 3
echo
echo
echo INSTALLING
echo neofetch htop neovim gparted openvpn network-manager ntfs-3g
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

cd /termite
sudo apt install -y build-essential
sudo apt-get install -y g++ libgtk-3-dev gtk-doc-tools gnutls-bin valac intltool libgnutls28-dev libgirepository1.0-dev gperf libtool
sudo apt-get install -y libglib3.0-cil-dev libxml2-utils
sudo make
sudo make install

sleep 3

cd /home/$name/

echo
echo CHANGING THE DESKTOP
echo

sudo update-alternatives --config x-session-manager
