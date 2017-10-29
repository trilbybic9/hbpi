#/bin/bash
echo "this script will install handbrake on your raspberry or any other arm based Linux based devices. Script by trilbybic9. Special thanks to gkreldi from the raspberry forms for making this possible!"
delay=20000

sudo echo "deb http://download.videolan.org/pub/debian/stable/ /" >> /etc/apt/sources.list

sudo echo "deb-src http://download.videolan.org/pub/debian/stable/ /" >> /etc/apt/sources.list

sudo wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gdebi-core
wget http://steinerdatenbank.de/software/ghb_0.10.5-1_armhf.deb
echo" if any questions are asked, answer Y"
delay=20000
sudo gdebi ghb_0.10.5-1_armhf.deb