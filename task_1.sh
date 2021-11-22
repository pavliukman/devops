#!/bin/bash
#
# The scenario will change owner of directory recursively
#

if [[ ! $(id $1) ]]; then
  echo "User does not exist"
  exit
fi

if [ ! -d "$2" ]; then
  echo "Directory does not exist"
  exit
fi

chown -R $1:$1 $2