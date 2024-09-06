#!bin/bash

set -x
set -o errexit
printenv -O

node /action/index.js