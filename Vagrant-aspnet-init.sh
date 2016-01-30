# add mono package repository
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

# update apt cache
sudo apt-get update

# install all new updates
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade

# install DNVM pre-requisites
sudo apt-get install -y unzip curl

# install mono
sudo apt-get install -y mono-complete

# update certificate roots
mozroots --import --sync

# install DNX pre-requisites
sudo apt-get install -y libunwind8 gettext libssl-dev libcurl4-openssl-dev zlib1g libicu-dev uuid-dev

# install KESTREL pre-requisites
sudo apt-get install -y make automake libtool curl
curl -sSL https://github.com/libuv/libuv/archive/v1.8.0.tar.gz | sudo tar zxfv - -C /usr/local/src
cd /usr/local/src/libuv-1.8.0
sudo sh autogen.sh
sudo ./configure
sudo make
sudo make install
sudo rm -rf /usr/local/src/libuv-1.8.0 && cd ~/
sudo ldconfig

# install VS Code pre-requisites
sudo apt-get install -y libnss3-dev

# install DNVM
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh

# run dnvm to print out version info
dnvm

# install dnx mono runtime
dnvm upgrade -r mono

# install dnx coreclr runtime
dnvm upgrade -r coreclr

# install SQLite
sudo apt-get install -y sqlite3 libsqlite3-dev

# download Visual Studio Code package
wget http://go.microsoft.com/fwlink/?LinkID=620884 -O VSCode-linux64.zip
unzip VSCode-linux64.zip -d /home/vagrant/Desktop/

cat >/home/vagrant/Desktop/Code.desktop <<EOL
[Desktop Entry]
Type=Application
Icon=
Name=Visual Studio Code
Comment=Visual Studio Code   
Categories=Applications
Exec=/home/vagrant/Desktop/VSCode-linux-x64/Code
StartupNotify=true
Terminal=false
EOL

rm VSCode-linux64.zip


echo '@setxkbmap -layout "pt"' | sudo tee -a /etc/xdg/lxsession/Lubuntu/autostart
sudo setxkbmap -layout "pt"

sudo update-locale LANG=en_US.UTF-8
sudo dpkg-reconfigure locales

echo "-----------------------------------------"
echo "-----------------------------------------"
echo "------  BOM VIZINHO API DEV BOX   -------"
echo "------      SETUP IS DONE         -------"
echo "-----------------------------------------"
echo "-----------------------------------------"
