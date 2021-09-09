#!/bin/bash
echo -e "\nInstalling git ..."

# install git
sudo apt-get install git-all
# show git version
git --version

if [ $? == 0 ] # last command success
then
    echo -e "Git sucessfully installed :)\n" # show message
fi