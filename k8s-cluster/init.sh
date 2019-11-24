# Startup script for k8s "cluster" on Ubuntu 18.04
#
# This script will be added to vultr as a boot script which runs as root
#
# Created By: Nathan New
# Last Modified: 2019-11-23

# Create personal user for the machine
echo "%wheel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
useradd nate --create-home --shell /bin/bash -G docker -G sudo --disabled-password
mkdir -p /home/nate/.ssh && touch authorized_keys
chmod 600 /home/nate/.ssh
cat /root/.ssh/authorized_keys >> /home/nate/.ssh/authorized_keys
chmod 700 /home/nate/.ssh/authorized_keys
chown -R nate:nate /home/nate/.ssh/authorized_keys

# Install docker on VM
# Upgrade the system if necessary
apt update && apt upgrade
# Add docker prereqs
apt install apt-transport-https ca-certificates curl software-properties-common
# Get gpg key and add docker repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
# Install docker
apt install docker-ce
# Add ubuntu user to docker group to allow docker commands without sudo
usermod -aG docker "ubuntu"

# Install k8s on VM
curl -sfL https://get.k8s.io | sh -