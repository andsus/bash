#!/usr/bin/env bash

main() {
    if (( $# != 1 )) 
    then
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi
    echo "Hello, $1"
}

# vargas - call main with all of the positional arguments
main "$@"