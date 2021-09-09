#!/bin/bash
echo -e "\nConfiguring NVM ..."

source $HOME/.nvm/nvm.sh; nvm --version # show version nvm
if [ $? == 0 ] # if last command success
then
    echo -e "NVM successfully installed :)\n"

    source $HOME/.nvm/nvm.sh; nvm install node; nvm use node # install node lts and use node lts
    npm --version # show npm version
    
    if [ $? == 0 ] # if last command success
    then
        echo -e "Node successfully installed :)\n"
     
        npm i -g yarn # install yarn
        yarn --version # show yarn version
    
        if [ $? == 0 ] # if last command success
        then
            echo -e "Yarn successfully installed :)\n"
            echo -e "NVM configured successfully :)\n"
        fi
    fi
fi