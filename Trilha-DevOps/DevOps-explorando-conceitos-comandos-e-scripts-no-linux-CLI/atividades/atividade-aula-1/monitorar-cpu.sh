#!/bin/bash

quantidade=5

echo "Top $quantidade processos por uso de CPU:"
ps aux --sort=-%cpu | head -n $((quantidade + 1))
