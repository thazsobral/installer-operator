#!/bin/bash
echo -e "\nInstalling NVM ..."

# download nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash
# execute script for install nvm
source ~/.bashrc 

# if last command success
if [ $? == 0 ]
then
    # show message
    echo -e "NVM successfully installed :)\n"
fi