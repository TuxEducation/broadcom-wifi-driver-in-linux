#
# Install bradcom wifi driver in linux.
# Please Do Not Modify This File.
# Author : Vishal Nagda (Team ATOM)
# Version 1.0.0
#!/bin/bash
#
#Broadcom BCM4311, BCM4312, BCM4313, BCM4321, BCM4322, BCM43224, BCM43225, BCM43227, BCM43228, BCM43142, BCM4331, BCM4352, BCM4360 devices (wl)
set -e
#Add a "non-free" component to /etc/apt/sources.list for your Debian version, for example: 
#Debian 8 "Jessie"
#deb http://http.debian.net/debian/ jessie main contrib non-free

#Update the list of available packages. Install the relevant linux-headers and broadcom-sta-dkms packages:
apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
#This will also install the recommended wireless-tools package. DKMS will build the wl module for your system. 

#Unload conflicting modules: 
modprobe -r b44 b43 b43legacy ssb brcmsmac

#Load the wl module: 
modprobe wl
