#!/usr/bin/env bash

main () {
  local -r input="${1//[^a-zA-Z]}"
  local -r charsCount=$(echo "${input,,}" | fold -w1 | sort | uniq | wc -l)
  [[ $charsCount -eq 26 ]] && echo "true" || echo "false"
}

main "$@"
