#!/bin/bash
set -e
eval `ssh-agent`
cat /ssh/id_rsa | ssh-add -k -
export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
mkdir /app
cd /app
git init
git remote add origin $1 
git fetch origin $2 
git reset --hard FETCH_HEAD
cd docker
./cold_up.sh
