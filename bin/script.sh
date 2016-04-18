#!/bin/bash
lib="lib/script.inc.sh"
[ ! -e $lib ] && echo "$lib not found" && exit 1
. $lib
myFunc $@ || quit "myFunc Failed" $?
