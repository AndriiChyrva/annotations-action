#!bin/bash

set -x
set -o errexit
printenv -O

node ${GITHUB_ACTION_PATH}/index.js