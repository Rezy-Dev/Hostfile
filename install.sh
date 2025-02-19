#!/bin/bash

# user is running the script as sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root (sudo)."
    exit 1
fi

# clone the repo
echo "Cloning Hostfile repository..."
git clone https://github.com/Rezy-Dev/Hostfile /tmp/Hostfile

cd /tmp/Hostfile

# move the script to /usr/bin
echo "Moving hostfile to /usr/bin/"
mv hostfile /usr/bin/

# Making the script executable
echo "Making hostfile executable..."
chmod +x /usr/bin/hostfile

# set SUID bit so the script can be run without sudo
echo "Setting SUID bit on hostfile..."
chmod u+s /usr/bin/hostfile

# remove the tmp file
echo "Cleaning up..."
rm -rf /tmp/Hostfile

# completion message
echo "Hostfile script successfully installed and set up. You can now use 'hostfile' command."
