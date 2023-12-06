#!/usr/bin/env bash

if command -v lolcat >/dev/null; then
	echo "Starting the installer."
	sleep 0.5
else
	echo "Lolcat is not installed. Please install it."
	exit 1
fi

echo "##############################" | lolcat
echo "### Start the installation ###" | lolcat
echo "##############################" | lolcat
sleep 0.5

clear

printf "Hey. This script can overwrite these files; \n~/.bashrc \n~/.beubash (if exists) \nIf you are sure, wait please." | lolcat 
sleep 2

rm -rf ~/.beubash 2>/dev/null

echo "Cloning the repo." | lolcat
git clone https://github.com/Quitaxd/beubash ~/.beubash

clear

echo "Removing ~/.bashrc" | lolcat
rm ~/.bashrc
sleep 1

clear

ln -s ~/.beubash/.bashrc ~/.bashrc

clear

echo "Installation has been completed!" | lolcat
sleep 1

clear 

source ~/.bashrc
