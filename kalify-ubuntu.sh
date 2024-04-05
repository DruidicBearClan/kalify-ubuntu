#!/bin/bash

#Require root permissions
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#warn
pause 'This script will install the majority of the useful Kali linux tools and some other essentials on your Ubuntu. This script is a work in progress and far from finished'

#updating and installing packages 
apt get update && apt get upgrade -y

#installing all packages from default ubuntu repo's
apt install tilix ffmpeg net-tools openssh whois pdns-server remmina htop dnsutils ldnsutils traceroute nmap redis-tools
qt5-style-kvantum qt5-style-kvantum-themes libssl-dev libssh-dev libidn11-dev libpcre3-dev golang-go gobuster
proxychains slapd ssdeep ldap-utils wireshark meld hashcat gpg pgpgpg sqlitebrowser tor default-mysql-client libimage-exiftool-perl binwalk -y