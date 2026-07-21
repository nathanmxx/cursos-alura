#!/bin/bash

origem="/home/vboxuser/Docs"
destino="/home/vboxuser/backups"
data=$(date +"%Y%m%d")

tar -czf "$destino/backup_$data.tar.gz" "$origem"
