#!/bin/bash

# Configuracao do cron (crontab -e) pra rodar a cada 2 horas:
# 0 */2 * * * /home/vboxuser/monitorar-erros-cron.sh

log_monitorado="/home/vboxuser/log_monitorado.txt"

echo "Mensagens de erro - $(date +"%Y-%m-%d %H:%M:%S")" >> "$log_monitorado"
tail -n 5 /var/log/syslog | grep "error" >> "$log_monitorado"
