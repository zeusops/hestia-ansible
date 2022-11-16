#!/bin/bash

#set -euo pipefail

FLAG=stop

rm -f $FLAG
first=yes

while true; do
  if [ -e $FLAG ]; then
    echo "Flag found, stopping"
    exit
  fi
  if [ "$first" = "yes" ]; then
    echo "Starting"
    first=no
  else
    echo "Restarting"
    date >> restart.log
  fi
  ./run.sh
  sleep 1
done
