#!/bin/bash

read -p "Digite o nome do novo usuario: " nome_usuario

sudo useradd -m "$nome_usuario"
sudo passwd "$nome_usuario"
