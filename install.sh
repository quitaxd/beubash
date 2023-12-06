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

echo "Cloning the repo." | lolcat
git clone https://github.com/Quitaxd/beubash ~/.beubash

if ls ~/.bashrc >/dev/null; then
	echo "" >> ~/.bashrc
	echo "~/.beubash/scripts/*.sh" >> ~/.bashrc
	echo "source ~/.beubash/aliases.conf" >> ~/.bashrc
else
	touch ~/.bashrc
	echo "" >> ~/.bashrc
	echo "~/.beubash/scripts/*.sh" >> ~/.bashrc
        echo "source ~/.beubash/{aliases,ps1}.conf" >> ~/.bashrc
fi

source ~/.bashrc
