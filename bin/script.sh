#!/bin/bash
# v0.0.2

lib="lib/script.inc.sh"
[ ! -e $lib ] && echo "$lib not found" && exit 1
. $lib
f=${1}
shift
case $f in
	my|jane) ${f}Func $@ || quit "myFunc '$@' Failed" $? ;;
	*) quit "'${f}' no function found" ;;
esac
