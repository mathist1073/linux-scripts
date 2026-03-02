#! /usr/bin/env bash

thing=`whoami`

echo "thing is $thing"

# Substitution when using ins a string

echo `echo \`whoami\``

# backend.auth.password = "EpqhGDU0f_551zPA6c28lA"
echo " -------"
echo $(whoami)

echo $(echo ${whoami})


