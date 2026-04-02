#!/usr/bin/env bash

# check whether we got an argument
if [[ -n $1 ]]; then
  name=$1
else
  read -p 'Enter your name: ' name
fi

#echo "Hello $name"

#for thing in "$1" "$2" "$3"; do
#	echo "thing is $thing"
##done

for thing in "$@"; do
  echo "thing is $thing"
done

hello() {
  local s=$1
  echo "Hello $1"
}

goodbye() {
  local s=$1
  echo "Goodbye $1"
}

for name in "$@"; do
  case "name" in
  d*) hello $name ;;
  b*) hello $name ;;
  *) goodbye $name ;;
  esac

done
