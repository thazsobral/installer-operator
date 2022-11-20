#!/bin/bash
echo -e "\nInstalling Brave Browser ..."

# install apt-transport-https and curl
sudo apt install apt-transport-https curl
# download brave broser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# register brave browser
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# update packages
sudo apt update
# install brave browser
sudo apt install brave-browser

# last command success
if [ $? == 0 ] 
then
    # show message
    echo -e "Brave Browser sucessfully installed :)\n"
fi