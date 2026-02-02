#!/usr/bin/env bash

for name in foo bar baz; do
	echo "name is $name"
done

# Expand the variable range, works with letters, numbers
for thing in {a..f}; do
	echo "thing is $thing"
done 

for thing in {1..5}; do 
	echo "thing is $thing "
done 

# If you want to use a variable to check the expand, you need to use a differnt type of loop
# (( )) --> math mode
max=5
for ((i=0; i < $max; i++)); do
	echo "i is $i"
done


