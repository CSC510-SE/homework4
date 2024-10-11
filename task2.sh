#!/usr/bin/env bash

grep -rl "sample" dataset1/* | xargs grep -o "CSC510" | uniq -c | grep '^\s*[3-9]' | cut -d: -f1 | gawk ' { printf $0; system("ls -l " $2) } ' | gawk ' { print $1, $6, $10 } ' | sort -nr -k1,1 -k2,2 | sed 's/file_/filtered_/g'
