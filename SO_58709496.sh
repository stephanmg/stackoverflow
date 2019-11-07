#!/bin/bash
# author: stephanmg

INPUT="OUT 2019.11.05D04:51:39.583193000 ### hostname ### [blah] From 127.0.0.1 - Some Stuff here: ' Fred@somewhere.com, james@elsewhere.com, Steve@Cabbage.com, 75692, 45263, 99956, London, Sydney, Paris Some other Text ###"
numCols=3
while IFS= read -r line
do
  CLEAN_INPUT=$(sed "s/.*'//; s/\([[:alpha:]]* \)\{3\}###$//" <<< $line)
  awk -F "," -v n=$numCols ' { for (i=1; i <= NF/n; i++) { print $(i),"|",$(i+NF/3),"|",$(i+2*NF/3) } }' <<< $CLEAN_INPUT
done <<< "$INPUT"
