#!/usr/bin/env bash

computeForSquare() {
	local -i field="$1"
	if ((field <= 0)) || ((field > 64)); then
		echo "Error: invalid input"
		exit 1
	fi

	bc <<< "2^($field - 1)"
}

computeTotal() {
	bc <<< "2^64 - 1"
}

main() {
	local input="$1"
	if [[ "$input" == "total" ]]; then
		computeTotal
	else
		computeForSquare "$1"
	fi
}

main "$@"