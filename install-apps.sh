#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Ubuntu)
# Written by @Roshan Kumar Thapa / https://github.com/rthway
#######################################

## Update packages and Upgrade system
sudo apt-get update -y && sudo apt-get upgrade -y 

## wget ##
echo '###Installing wget.. ###'
sudo apt-get install wget -y

## Apache ##
echo '###Installing Apache.. ###'
sudo apt-get install apache2 -y
# config
sudo ufw allow 'Apache'

## php ###
echo '###Installing php.. ###'
sudo apt install php libapache2-mod-php -y
# Once the packages are installed restart the Apache service
sudo systemctl restart apache2

## Anydesk ##
echo '###Installing Anydesk.. ###'
# get file from url
https://download.anydesk.com/linux/anydesk_5.5.6-1_amd64.deb
# Install Anydesk 
sudo apt install ./anydesk_5.5.6-1_amd64.deb -y

## chrome ##
echo '###Installing Chrome.. ###'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

## Dropbox ##
echo '###Installing Dropbox.. ###'
sudo apt-get install nautilus-dropbox -y

## Filezilla ##
echo '###Installing Filezilla.. ###'
sudo apt-get install filezilla -y 

## git ##
echo '###Installing Git.. ###'
sudo apt-get install git -y

## MySQL Server ##
echo '###Installing MySQL server.. ###'
sudo apt-get install mysql-server -y 
# Allow remote access
sudo ufw enable
sudo ufw allow mysql
# Launch at reboot
sudo systemctl enable mysql

## MySQL Workbench ##
echo '###Installing MySQL workbench.. ###'
sudo apt-get install mysql-workbench -y

## PyCharm Community edition ##
echo '### Installing PyCharm Community edition.. ###'
sudo apt-get install pycharm-community -y

## Remmina ##
echo '### Installing remminan.. ###'
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y

## Skype ##
echo '###Installing Skype.. ###'
# get file from url
wget https://repo.skype.com/latest/skypeforlinux-64.deb
# install skype
sudo apt install ./skypeforlinux-64.deb

## Sub-lime Text ##
echo '###Installing Sub-lime Text Editor.. ###
sudo apt-get update; sudo apt-get install sublime-text-installer -y

## VLC ##
echo '###Installing VLC.. ###'
sudo apt-get install vlc -y

##  WPS-Office##
echo '###Installing WPS office.. ###'
wget http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/9522/wps-office_11.1.0.9522.XA_amd64.deb
# Install Wps
sudo apt install ./wps-office_11.1.0.9522.XA_amd64.deb -y

## Virtualbox ##
echo '###Installing XDM.. ###'
sudo apt install virtualbox -y

## XDM ##
echo '###Installing XDM.. ###'
# get file 
wget https://github.com/subhra74/xdm/releases/download/7.2.10/xdm-setup-7.2.10.tar.xz
# extract file
tar xvf xdm-setup-7.2.10.tar.xz
cd xdm-setup-7.2.10
sudo ./install.sh