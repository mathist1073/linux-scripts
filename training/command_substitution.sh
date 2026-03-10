#! /usr/bin/env bash

# thing=`whoami`

# echo "thing is $thing"

# Substitution when using ins a string

# echo `echo \`whoami\``

# backend.auth.password = "EpqhGDU0f_551zPA6c28lA"
# echo " -------"
# echo $(whoami)

# echo $(echo ${whoami})

# Command Substitution
i=5 

my_test() {

	i=6
	echo "inside the function --> $i"
}

thing=$(my_test)
# This is also valid, new syntax pay attention to the space

# thing=${ my_test; }

#
echo "1st i = $i"

my_test  

echo "Second i = $i"

