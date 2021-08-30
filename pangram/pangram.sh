#!/usr/bin/env bash

main() {
  local phrase="${1,,}"
  # strip non-alpha characters
  phrase="${phrase//[^[:alpha:]]}"
  
  local -r alphabet="abcdefghijklmnopqrstuvwxyz"
  local -r removed_alpha=${alphabet//[$phrase]}
  
  (( ${#removed_alpha} == 0 )) && echo "true" || echo "false"

}


main "$@"
