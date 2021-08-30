#!/usr/bin/env bash

# Returns whether the provided number is an armstrong number
function main {

    local -i digit running_total=0
    local -i exponent=${#1}

    while IFS='' read -rN 1 -d '' digit; do
        (( running_total += digit ** exponent ))
    done < <(printf %s "$1")

    if (( running_total == $1 )); then
        echo true
    else
        echo false
    fi
}

main "$@"