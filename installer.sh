#!/bin/bash
#
# installer.sh - instalador de softwares padrão para fedora
#
# ---------------------------------------------------------
#
# Este script executa instaladores dentro da própria pasta de forma forma automática, sendo necessário apenas passar a distribuição em uso
#
# Autor/Mantenedor: Thaz Sobral <thazsobral@gmail.com>
# 
# Exemplo de execução
# ./installer.sh install ubuntu
# $ Installing NVM ...
# $ NVM successfully installed :)
#
# ./installer.sh config ubuntu
# $ Configuring NVM ...
# $ NVM configured successfuly :)
#
# Controle de versões
# Versão: 1.0.0
#
# Licença: MIT

function loopFiles {
    FILES=`ls $CURRENT_DIR`
    for i in $FILES
    do
        chmod a+x "$CURRENT_DIR/$i"
        source "$CURRENT_DIR/$i"
    done
}

DIST=$2

case $1 in
    "install")
        CURRENT_DIR="./programs/$DIST"
        ;;
    "config")
        CURRENT_DIR="./configurations/$DIST"
        ;;
    *)
        echo "Choose a valid command: install or config"
        ;;
esac

loopFiles
