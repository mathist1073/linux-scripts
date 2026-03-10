#! /usr/bin/env bash

echo $((57 * 2))
echo $((57 ** 2))

a=2
b=3

echo $(($a + $b))
# You don't need the $ for math expression
echo $((a + b))

((c = a * b))

echo "c is equal to $c"

i=2

((i <<= 5))

echo "i is equal to $i"

d=7
e=8

((max = d > e ? d : e))
echo "max is $max"

# PAY ATTENTION IN YOUR SCRIPT EDPRESSION ALSO RETURNS
# EXECUTION SCRIPT STATUS, the firs one returmn = as success the second one ! as a failure
#
((2 + 2))
echo $?
((2 - 2))
echo $?

if ((a % 2 == 0)); then
  echo "a is even"
else
  echo "a is odd"

fi
