#!/bin/bash

linhas=10

echo "Ultimas $linhas linhas de mensagens de erro:"
tail -n $linhas /var/log/syslog | grep "error"
