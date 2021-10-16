#!/usr/bin/env bash

# Update dependencies
sudo apt update
sudo apt upgrade

# Install driver and GUI
sudo apt install \
	hplip \
	hplip-gui

# Running the driver/software:
# Usb based: $ hp-setup -b usb
# Network based: $ hp-setup <ipv4 address>

