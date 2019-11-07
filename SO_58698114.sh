#!/bin/bash

INPUT="value=12 value2=5 value3=2"
IFS=' ' read -ra IN <<< "$INPUT"
multipliers=(2 4 7)

for ((i=0; i<${#IN[@]}; ++i)); do
  tmp=${IN[$i]}
  sum=$((sum + $(awk -F '=' -v m="${multipliers[$i]}" '{print m*$2}' <<< ${tmp##value})))
done
echo $sum

awk -F ' ' 'BEGIN {m[1]=2; m[2]=4; m[3]=7;} {for (i=1; i <= NF; i++) {split($(i),a,"="); sum+=m[i] * a[2];}} END { print sum; } ' <<< "value=12 value2=5 value3=2"
