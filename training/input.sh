#!/usr/bin/env bash

# check whether we got an argument
if [[ -n $1 ]]; then
	name=$1
else
	read -p 'Enter your name: ' name
fi

echo "Hello $name"


#for thing in "$1" "$2" "$3"; do
#	echo "thing is $thing"
##done


for thing in "$@"; do
	echo "thing is $thing"
done
