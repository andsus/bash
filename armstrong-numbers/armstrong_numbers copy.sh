#!/usr/bin/env bash

#!/usr/bin/env bash

# Returns whether the provided number is an armstrong number

function validate-input {
    ########################################
    # Process script arguments.
    # Globals:
    #   NUMBER
    # Arguments:
    #   All arguments to main
    # Outputs:
    #   Usage on invalid input
    # Returns:
    #   Non-0 on invalid input
    ########################################
    local -r usage="Usage: armstrong_numbers.sh <int>"
    local -r pattern="+([[:digit:]])"

    if (( $# != 1 )); then
        echo $usage >&2
        exit 1
    fi

    if [[ "$1" != $pattern ]]; then
        echo "Invalid number: $1" >&2
        echo $usage >&2
        exit 1
    fi
}

function main {
    ########################################
    # Returns whether the provided number is an armstrong number
    # Inputs:
    #   An integer
    # Outputs:
    #   true / false
    # Returns:
    #   Always 0
    ########################################
    local -i digit running_total=0
    local -i exponent=${#1}
    #validate-input "$@"

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