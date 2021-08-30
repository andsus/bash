#!/usr/bin/env bash

main () {
    echo "One for $1, one for me."
}

main "${1:-"you"}"