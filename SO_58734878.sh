#!/bin/bash

pattern='[CURRENT_DATE][THREAD_ID][PROCESS_NAME]Some random text here'
echo $pattern

awk -F '\[' '{print substr($3, 1, length($3)-1)}' <<< "$pattern"
sed 's/\[[^]]*\]\[\([^[]*\)\].*/\1/' <<< "$pattern"
