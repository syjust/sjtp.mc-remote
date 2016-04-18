#!/bin/bash
function myFunc() {
	local count=0
	echo "myFunc launched with args :"
	for i in $@ ; do
		printf "  %03d. '%s'\n" "$count" "$i"
		let count++
	done
	return 0
}
function quit() {
	echo -e "$@"
	exit 1
}
