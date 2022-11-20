#!/bin/bash
echo -e "\nInstalling VSCode ..."

# install wget and gpg
sudo apt-get install wget gpg
# download microsoft package
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# install microsoft package
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
# make package code
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
#remove package.gpg
rm -f packages.microsoft.gpg
# install apt-transport-https
sudo apt install apt-transport-https
# update packages
sudo apt update
# install code
sudo apt install code 

# last command success
if [ $? == 0 ] 
then
    # show message
    echo -e "VSCode sucessfully installed :)\n"
fi