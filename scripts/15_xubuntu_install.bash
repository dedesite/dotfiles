echo
echo "=============================="
echo "Removing useless Xubuntu package"
echo "=============================="

sudo apt-get remove -y ristretto parole xfburn

echo
echo "=============================="
echo "Adding Peek, shotcut and yarn ppa"
echo "=============================="
sudo add-apt-repository ppa:haraldhv/shotcut
sudo add-apt-repository ppa:peek-developers/stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


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
sudo apt-get install -y vlc xubuntu-restricted-extras cheese brasero shotwell shotcut sound-juicer ogmrip handbrake libdvd-pkg
#Install encrypted dvd library
sudo dpkg-reconfigure libdvd-pkg

echo
echo "=============================="
echo "Installing graphic design packages"
echo "Or Install gimp from 'Software' with snap"
echo "=============================="
sudo apt-get install -y gimp inkscape pinta peek

echo
echo "=============================="
echo "Installing system packages"
echo "=============================="
sudo apt-get install -y gnome-system-monitor gdebi-core rar git curl unrar usb-creator-gtk wget gparted gnome-font-viewer


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
echo "Installing Sublime Text 3 from 'Software' with snap"
echo "=============================="

echo
echo "=============================="
echo "Installing Node.js"
echo "=============================="
sudo apt-get install -y nodejs yarn

echo
echo "=============================="
echo "Installing MySql"
echo "=============================="
sudo apt-get install -y mysql-server libmysqld-dev

