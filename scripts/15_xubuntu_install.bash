echo
echo "=============================="
echo "Removing useless Xubuntu package"
echo "=============================="

sudo apt-get remove -y ristretto parole apport

echo
echo "=============================="
echo "Adding Wine, SublimeText Pinta and nodejs ppa"
echo "=============================="

sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:chris-lea/node.js
sudo add-apt-repository ppa:pinta-maintainers/pinta-stable

echo
echo "=============================="
echo "Updating package list and upgrading system"
echo "=============================="
sudo apt-get update
sudo apt-get upgrade -y

echo
echo "=============================="
echo "Installing good multimedia packages"
echo "=============================="
sudo apt-get install -y vlc xubuntu-restricted-extras libavcodec-extra cheese brasero shotwell sound-juicer ogmrip arista
#Install encrypted dvd library
sudo /usr/share/doc/libdvdread4/install-css.sh

echo
echo "=============================="
echo "Installing graphic design packages"
echo "=============================="
sudo apt-get install -y gimp inkscape pinta

echo
echo "=============================="
echo "Installing system packages"
echo "=============================="
sudo apt-get install -y gnome-system-monitor synaptic gdebi-core gksu rar unrar usb-creator-gtk wget gparted gnome-font-viewer


echo
echo "=============================="
echo "Installing web packages"
echo "=============================="
sudo apt-get install -y chromium-browser filezilla icedtea-plugin

echo
echo "=============================="
echo "Installing Wine"
echo "=============================="
sudo apt-get install -y wine1.8

echo
echo "=============================="
echo "Installing Sublime Text 3"
echo "=============================="
sudo apt-get install -y sublime-text-installer

echo
echo "=============================="
echo "Installing Node.js"
echo "=============================="
sudo apt-get install -y nodejs

echo
echo "=============================="
echo "Installing MySql"
echo "=============================="
sudo apt-get install -y mysql-server libmysqld-dev

echo
echo "=============================="
echo "Installing Skype"
echo "=============================="
wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
mv getskype-linux-beta-ubuntu-64 skype-bin.deb
sudo dpkg -i skype-bin.deb

echo
echo "=============================="
echo "Installing DropBox"
echo "=============================="
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
sudo dpkg -i dropbox_2015.02.12_amd64.deb
