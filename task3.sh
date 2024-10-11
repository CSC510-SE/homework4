#!/bin/bash
## task3
# Step 1: Read the Titanic CSV file and filter only rows where the 3rd column (Pclass) is 2
# Step 2: Remove carriage returns from the file
# Step 3: Filter rows where the last column (Embarked) is 'S' (Southampton)
# Step 4: Replace "male" with "M" and "female" with "F"
# Step 5: Calculate the average age of the filtered rows, excluding rows with missing or non-numeric age values

cat titanic.csv | grep -E "^[0-9]+,[0-9],2" | tr -d '\r' | grep -E ",S$" | sed -E 's/,[ ]*male,/,M,/g' | sed -E 's/,[ ]*female,/,F,/g' | gawk -F, '{ print $0; if ($6 != "" && $6 ~ /^[0-9]+$/) { sum += $6; count++ } } END { if (count > 0) print "Average Age:", sum/count }'
