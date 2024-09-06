#!bin/bash

set -x
set -o errexit
printenv -O

echo "Exec entrypoint.sh"

node /action/index.js