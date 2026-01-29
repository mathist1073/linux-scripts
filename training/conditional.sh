#!/usr/bin/env bash

a=2
b=2

if [[ $a == $b ]]; then
	echo "$a is equal to $b"
fi

c=3
d=4

if [[ $c != $d ]]; then
	echo "$c and $d are not the same"
fi

if [[ -f file.txt ]]; then
	echo "file.txt exists and is a file"
else	
	echo "file.txt does not exist"
fi



# Loop example
while [[ -f file.txt ]]; do
	echo "file.txt exists and is a file"
	sleep 1
done


until [[ -f file.txt ]]; do
	echo "file.txt exists and is a file"
	sleep 1
done

