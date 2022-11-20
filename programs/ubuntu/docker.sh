#!/bin/bash
echo -e "\nInstalling Docker ..."

# update packages
sudo apt-get update
# install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# Use the following command to set up the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Install Docker Engine
sudo apt-get update
# Install Docker Engine, containerd, and Docker Compose
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# last command success
if [ $? == 0 ]
then
    # show message
    echo -e "Docker sucessfully installed :)\n"
fi