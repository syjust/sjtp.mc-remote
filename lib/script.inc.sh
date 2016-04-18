#!/bin/bash
function myFunc() {
	local count=0
	if (echo "$1" | egrep -q "Func$" > /dev/null 2>&1) ; then
		echo "$1 launched with args :"
		shift
	else
		echo "myFunc launched with args :"
	fi
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
function janeFunc() {
	myFunc janeFunc $@
}
