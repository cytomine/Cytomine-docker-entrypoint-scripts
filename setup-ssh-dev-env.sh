#!/bin/sh

# ! This script is intended to be used in "dev-server" target only, and never in production !

# Set dev root password.
echo 'root:password' | chpasswd

# Copy Docker environment variables so that they are available when running from SSH.
env >> /etc/environment

# Configure and run sshd
mkdir /var/run/sshd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
/usr/sbin/sshd -D &
service ssh status

echo $0 "Started sshd and allow root login for development."