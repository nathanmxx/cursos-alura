#!/bin/bash

quantidade=5

echo "Top $quantidade processos por uso de memoria:"
ps aux --sort=-%mem | head -n $((quantidade + 1))
