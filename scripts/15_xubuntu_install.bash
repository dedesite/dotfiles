echo
echo "=============================="
echo "Removing useless Xubuntu package"
echo "=============================="

sudo apt-get remove -y ristretto parole apport

echo
echo "=============================="
echo "Adding Wine, SublimeText, Pinta, Peek, shotcut and nodejs ppa"
echo "=============================="

sudo add-apt-repository ppa:wine/wine-builds
sudo add-apt-repository ppa:webupd8team/sublime-text-3
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo add-apt-repository ppa:haraldhv/shotcut
sudo add-apt-repository ppa:peek-developers/stable

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
sudo apt-get install -y vlc xubuntu-restricted-extras libavcodec-extra cheese brasero shotwell shotcut sound-juicer ogmrip handbrake libdvd-pkg
#Install encrypted dvd library
sudo dpkg-reconfigure libdvd-pkg

echo
echo "=============================="
echo "Installing graphic design packages"
echo "=============================="
sudo apt-get install -y gimp inkscape pinta peek

echo
echo "=============================="
echo "Installing system packages"
echo "=============================="
sudo apt-get install -y pdftk gnome-system-monitor synaptic gdebi-core gksu rar git curl unrar usb-creator-gtk wget gparted gnome-font-viewer


echo
echo "=============================="
echo "Installing web packages"
echo "=============================="
sudo apt-get install -y chromium-browser filezilla icedtea-plugin

echo
echo "=============================="
echo "Installing Wine"
echo "=============================="
sudo apt-get install -y --install-recommends winehq-devel

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


echo
echo "=============================="
echo "Installing DropBox"
echo "=============================="

