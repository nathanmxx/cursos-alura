#!/bin/bash

read -p "Digite o nome do arquivo: " nome_arquivo

if [ -e "$nome_arquivo" ]
then
        echo "O arquivo existe."
else
        echo "O arquivo nao existe."
fi
