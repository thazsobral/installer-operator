#!/bin/bash
#
# installer.sh - instalador de softwares padrão para fedora
#
# ---------------------------------------------------------
#
# Este script executa instaladores dentro da própria pasta de forma forma automática
#
# Autor/Mantenedor: Thaz Sobral <thazsobral@gmail.com>
# 
# Exemplo de execução
# ./installer.sh
# $ Instalando VSCode ...
# $ VSCode instaldo!
#
# Controle de versões
# Versão: 1.0.0
#
# Licença: MIT

# acessa a pasta com os arquivos de instalação de programas
FILES=`ls`

# percorre todos os arquivos da lista
for i in $FILES
do
    if [ $i != ${0:2} ] # se o arquivo for diferente do nome do arquivo
        then
            chmod a+x $i
            ./$i
    fi
done
    