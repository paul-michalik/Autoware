#!/usr/bin/env bash

# Installs virtualbox guest additions on Ubuntu-server. You'll need to "insert the CD" manually. Run with sudo!
apt-get update

apt-get install -y dkms build-essential

echo "reboot and mount the folders manually!"
 