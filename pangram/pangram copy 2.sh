#!/usr/bin/env bash

main() {
  (( $# != 1 )) && die "Usage: pangram.sh <phrase>"
  local phrase="${1,,}"
  echo "${phrase}"
  # strip non-alpha characters
  phrase="${phrase//[^[:alpha:]]}"
  echo "${phrase}"
  
  alpha_elimination
}

alpha_elimination() {
  local -r alphabet="abcdefghijklmnopqrstuvwxyz"
  local -r eliminated=${alphabet//[$phrase]}
  echo "$eliminated"
  (( ${#eliminated} == 0 )) && echo "true" || echo "false"
}

main "$@"
