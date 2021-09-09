#!/bin/bash
echo -e "\nInstalling NVM ..."

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash # download nvm
source ~/.bashrc # execute script for install nvm

if [ $? == 0 ] # if last command success
then
    echo -e "NVM successfully installed :)\n" # show message
fi