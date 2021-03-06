#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt install -y ansible linux-headers-$(uname -r) build-essential dkms

sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro /home/vagrant/VBoxGuestAdditions.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
rm /home/vagrant/VBoxGuestAdditions.iso
