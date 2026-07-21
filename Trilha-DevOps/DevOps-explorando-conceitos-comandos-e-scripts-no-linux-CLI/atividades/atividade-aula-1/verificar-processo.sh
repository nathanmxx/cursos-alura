#!/bin/bash

processo="nginx"

if pgrep "$processo" > /dev/null
then
        echo "$processo esta em execucao."
else
        echo "$processo nao esta em execucao."
fi
