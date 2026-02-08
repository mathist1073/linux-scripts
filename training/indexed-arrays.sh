#!/usr/bin/env bash 

array=(foo bar baz)
echo "0: ${array[0]}"
echo "1: ${array[1]}"
echo "2: ${array[2]}"
# don't display anything
echo "3: ${array[3]}"
#index from the end of the array
echo "-1: ${array[-1]}"


idx=2
echo "idx: ${array[$idx]}"
# or the following one is also valid
echo "idx: ${array[idx]}"


# Dispay the full array
echo "*: ${array[*]}"
echo "@: ${array[@]}"

# See difference between * and $
#
# * is used to stringtifying an array to a string os ti will give --> foo bar baz
for item in "${array[*]}"; do 
	echo "item is: $item"
done 

# @ is what you want, properly breaking down the array
# it will give three lines with the corresponding element
for item in "${array[@]}"; do
	echo "item is: $item"
done

# The correct way of declaring an array is to use the reseved word declare but not mandatory

# Quotes are important when defining "${array[@]} othersie it will take each single string as an element
#
declare -a array=(foo
	bar
	baz
	'Hello there'
)

# Without the double quotes in the for , hello and there would be considered as two elements instead of one
for item in "${array[@]}"; do 
	echo "item is: $item"
done 

# Copying ann array is tricky if we don't want to end up with a big string instead the array
second_array=( "${array[@]}" )
echo "second array: ${second_array[@]}"

# Creating a new arra and adding new elements 
third_array=( "${array[@]}" billy guy)
echo "third array + billy and Guy: ${third_array[@]}"

# Concatening 2 arrays like the slice in JS
third_array+=(buddy joe orion) 
echo "Concatenated third array: ${third_array[@]}"

# Display the length of the array --> pound sign #
echo "Length: ${#third_array[@]}"
