#!/bin/bash

tags[tag1]="some regex1"
tags[tag2]="some regex2"
tags[tag3]="some regex3"

function action() {
  echo "perl -pe '${tags[$tag]} other-file.txt'"
}


# option 1 (tag not easily described by regex)
while read LINE; do
  for tag in "${!tags[@]}"; do
    [[ $LINE =~ ^$tag ]] && action "${tags[$tag]}"
  done
done < foo.txt

# option 2
while read LINE; do
  [[ $LINE =~ ^(.*)\s ]] && action "${tags[${BASH_REMATCH[1]}]}"
done < foo.txt
