#! /usr/bin/env bash

process-indexed() {
  # Getting an array of arguments
  local arguments=("$@")
  echo "Found ${#arguments[@]} arguments"

  local IFS=,
  echo "${arguments[@]}"

}

process-associative() {
  # Getting the arguments
  local arguments=("$@")
  echo "Found a total of ${#arguments[@]}"
  declare -A unique
  local item
  for item in "${arguments[@]}"; do
    unique[$item]=1
  done

  echo "Found ${#unique[@]} unique arguments"

}

process-commands() {
  # Getting the arguments
  local arguments=("$@")
  echo "Found a total of ${#arguments[@]} arguments"

  local item
  for item in "${arguments[@]}"; do
    echo "Running command: $item"

    "$item"
  done

}

cmd=$1
shift

case "$cmd" in
indexed)
  process-indexed "$@"
  ;;
associative)
  process-associative "$@"
  ;;
commands)
  process-commands "$@"
  ;;
*)
  echo "unkwnown command $cmd " >&2
  exit 1
  ;;
esac

# process-indexed $@
# process-associative $@
