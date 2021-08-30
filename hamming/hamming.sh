#!/usr/bin/env bash

function killed() {
    echo "$*" >&2
    exit 1
}

[ $# == 2 ] || killed 'Usage: hamming.sh <string1> <string2>'


if [ "${#1}" -ne "${#2}" ]; then
  killed 'left and right strands must be of equal length'
fi

dist=0
for (( i = 0; i < ${#1}; i++ )); do 
  if [ "${1:$i:1}" != "${2:$i:1}" ]; then
    dist=$((dist+1))
  fi
done


echo $dist