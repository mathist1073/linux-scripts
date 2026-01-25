#!/usr/bin/env bash


greet() {
	# Must be defined as local
	local name=$1
	echo "Hello $name"
	return 0

}

for name in "$@"; do
	greet "$name"
	
done

greet mathist

# return stasus by getting the function return code
echo $?
