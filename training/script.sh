#!/usr/bin/env bash

name='Mathist'
number=12
system=$(uname -a)

echo "Hello $name your number is $number"
echo "Your system is $system"

for thing in foo bar baz bat; do
	echo "thing is $thing"
done


