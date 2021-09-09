#!/bin/bash
echo -e "\nConfiguring git ..."

git --version # show git version
if [ $? == 0 ] # if last command success
then
    git config --global user.name "thazsobral" # config username
    git config --global user.email "thazsobral@gmail.com" # config email

    ssh-keygen -t rsa -b 4096 -C "thazsobral@gmail.com" # generate ssh key
    
    RSA=`cat ~/.ssh/id_rsa.pub` # get public key ssh
    echo -e "Paste this id_rsa into https://github.com/settings/keys :\n$RSA"

    eval "$(ssh-agent -s)" # show ssh-agent

    ssh-add ~/.ssh/id_rsa # add ssh key

    if [ $? == 0 ] # if last command success
    then
        echo -e "git configured successfully :)\n"
    fi
fi