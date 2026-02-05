#!/usr/bin/env bash

while read -r line || [[ -n $line ]]; do
	echo "we read line: $line"
done ./while.sd < usr/share/dict/words 
