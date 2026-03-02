#! /usr/bin/env bash

array=(foo bar baz)

# backend.auth.password = "EpqhGDU0f_551zPA6c28lA"
# IFS=hello
IFS=:
echo "Array is: ${array[*]}"
