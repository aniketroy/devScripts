#!/bin/sh

# Install docker-ce latest edition
# Author : Aniket Roy

# Update the apt package index
sudo apt-get update
# Install packages to allow apt to use a repository over HTTPS
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# add the GPG key for the official Docker repository to the system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the Docker repository to APT sources
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index
sudo apt-get update
# Install the latest version of Docker CE
sudo apt-get install -y docker-ce

# Check that it's running:
sudo service docker status

## Executing the Docker Command Without Sudo

# add your username to docker group
sudo usermod -aG docker ${USER}

# apply group membership
su - ${USER}

# Verify that Docker CE is installed correctly
docker run hello-world

#sudo apt-get purge -y docker-ce
#sudo apt-get autoremove -y docker-ce
#sudo apt-get autoclean
#sudo rm -rf /var/lib/docker
#sudo rm /etc/apparmor.d/docker
#sudo groupdel docker
#sudo rm -rf /var/run/docker.sock
