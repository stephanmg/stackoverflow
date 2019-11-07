#!/bin/bash
INPUT="Release_2019_Config_V6_Standalone_PJ6678_Test"
IFS='_' read -ra IN <<< "$INPUT"
echo ${IN[5]}
cut -d '_' -f 6 <<< "$INPUT"
