#!/bin/bash
echo -e "\nInstalling git ..."

# install git
sudo apt-get install git-all
# show git version
git --version

# last command success
if [ $? == 0 ] 
then
    # show message
    echo -e "Git sucessfully installed :)\n"
fi