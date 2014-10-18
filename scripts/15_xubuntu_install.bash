echo
echo "=============================="
echo "Removing useless Xubuntu package"
echo "=============================="

sudo apt-get remove abiword gnumeric ristretto parole

echo
echo "=============================="
echo "Adding Wine, SublimeText and nodejs ppa"
echo "=============================="

sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:chris-lea/node.js 

echo
echo "=============================="
echo "Updating package list and upgrading system"
echo "=============================="
sudo apt-get update
sudo apt-get upgrade

echo
echo "=============================="
echo "Installing good multimedia packages"
echo "=============================="
sudo apt-get install vlc xubuntu-restricted-extras libavcodec-extra cheese brasero
#Install encrypted dvd library
sudo /usr/share/doc/libdvdread4/install-css.sh

echo
echo "=============================="
echo "Installing graphic design packages"
echo "=============================="
sudo apt-get install gimp inkscape

echo
echo "=============================="
echo "Installing system packages"
echo "=============================="
sudo apt-get install gnome-system-monitor synaptic gdebi-core gksu rar unrar usb-creator-gtk


echo
echo "=============================="
echo "Installing web packages"
echo "=============================="
sudo apt-get install chromium-browser filezilla icedtea-plugin

echo
echo "=============================="
echo "Installing libreoffice"
echo "=============================="
sudo apt-get install libreoffice

echo
echo "=============================="
echo "Installing Wine"
echo "=============================="
sudo apt-get install wine1.7

echo
echo "=============================="
echo "Installing Sublime Text 3"
echo "=============================="
sudo apt-get install sublime-text-installer

echo
echo "=============================="
echo "Installing Node.js"
echo "=============================="
sudo apt-get install nodejs

echo
echo "=============================="
echo "Installing MySql"
echo "=============================="
sudo apt-get install apache2 mysql-server phpmyadmin libmysqld-dev

echo
echo "=============================="
echo "Installing Skype"
echo "=============================="
wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
mv getskype-linux-beta-ubuntu-64 skype-bin.deb
sudo gdebi skype-bin.deb

echo
echo "=============================="
echo "Installing DropBox"
echo "=============================="
if ["$ARCH" == "64"]; then
	wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.2_amd64.deb
	sudo gdebi dropbox_1.6.2_amd64.deb
else
	wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.2_i386.deb
	sudo gdebi dropbox_1.6.2_i386.deb
fi