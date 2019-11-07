#!/bin/bash

pattern='{1.11.111.111 - 2017-10-06T00:00:00+00:00 111111 1 302 "GET /abcd/z1/bcdfgggg?values" uri="/abcd/v2/nano" 111 111 0 "-" "abcd/2.1.0 (Linux; U; Android 8.1.0; Redmi Note 6 Pro MIUI/V10.2.2.0.bcdwvc)" "1111:1111:111:1111:11:d11e:c11c:111a" cu=0.011 nano=0.011 var="-12345" "1111:1111:111:1111:11:d11e:c11c:111a, 11.111.111.111"}'
awk -F ' ' '{print $3,$6,$25}' <<< "$pattern"
