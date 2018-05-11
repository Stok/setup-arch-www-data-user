#!/bin/bash


pacman -S --noconfirm sudo
cp ./sudoers /etc/sudoers

# Make www-data user
useradd -m www-data
passwd www-data

mkdir /home/www-data/.ssh
cp /root/.ssh/authorized_keys /home/www-data/.ssh/authorized_keys

chown www-data /home/www-data/.ssh/authorized_keys
chmod 600 /home/www-data/.ssh/authorized_keys

chown www-data /home/www-data/.ssh
chmod 700 /home/www-data/.ssh
