#! /usr/bin/env bash

words=$(grep d /usr/share/dict/cracklib-small)
echo "words is --> $words"
i=0
#Here string
while read -r word; do
  echo "$word"
  ((i++))
done <<<"$words"

echo "Found $i words"

# Process substitutin with streaming a file
y=0
while read -r word2; do
  echo "$word2"
  ((y++))
  # < expect a file (redirector) and thr sub process <(...) for example here provides a file
done < <(grep d /usr/share/dict/cracklib-small)

echo "found $y words"
