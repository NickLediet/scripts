#!/usr/bin/env bash

# Notes:
# Stack Exchange post for installation guide:
#  - https://unix.stackexchange.com/questions/450229/getting-checkpoint-vpn-ssl-network-extender-working-in-the-command-line

# Setup Temp directory
mkdir temp && cd temp

# Get the installation script
wget https://starkers.keybase.pub/snx_install_linux30.sh?dl=1 -O snx_install.sh

# Setup 32-bit architecture support for debian based distros (Debian, Ubuntu, Mint...)
sudo dpkg --add-architecture i386
sudo apt update 

# Install 32-bit dependencies for building snx
sudo apt install libstdc++5:i386 libx11-6:i386 libpam0g:i386

# Run the installation script 'snx_install.sh'
chmod a+rx snx_install.sh
sudo ./snx_install.sh

# Exit and remove the Temp directory
cd .. && rm -rf temp/

