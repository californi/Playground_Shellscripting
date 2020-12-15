#!/bin/bash

# Installing some basic system utililties first.
cd ~
sudo apt-get update -qq
sudo apt-get install -yy htop gdebi synaptic grsync bleachbit gufw

# installing software from the repositories
sudo apt-get install -yy asunder lame flac virtualbox virtualbox-ext-pack openssh-server numix-gtk-theme vorbisgain unity-tweak-tool
sudo adduser bento vboxusers

# installing Google chrome

cd /home/bento/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb oceanaudio_debian64.deb
cd ~

# installing simplesScreenRecorder
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C13886
sudo apt-get update -qq

# Installation done

echo "All done! reboot the computer"
