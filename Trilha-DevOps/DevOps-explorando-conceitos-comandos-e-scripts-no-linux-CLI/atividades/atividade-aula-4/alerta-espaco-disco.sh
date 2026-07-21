#!/bin/bash

limite=90
espaco=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$espaco" -gt "$limite" ]
then
        echo "Alerta: Espaco em disco excedeu $limite%."
else
        echo "Espaco em disco esta abaixo do limite."
fi
