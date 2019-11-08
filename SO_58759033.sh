#!/bin/bash
while IFS=$'\n' read -ra line; do 
  numbers=($line)
  echo $(IFS=+; echo "$((${numbers[*]}))")
done <<< "1 2 3 4"
