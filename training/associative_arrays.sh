#!/usr/bin/env bash

if ! declare -A arr; then
	echo "Oh oh I cannot declare associated array !!!" >&2 
	exit 1
fi

arr[foo]=1
arr[bar]=2
arr[baz]=3

echo "${arr[foo]}"
echo "${arr[bar]}"
echo "${arr[baz]}"

# You can also use double quotes
echo "${arr["baz"]}"


echo "${!arr[@]}"

for key in ${!arr[@]}; do
	value=${arr[$key]}
	echo "key: $key --> $value" 
done

