#!/bin/bash
## task3
# Step 1: Read the Titanic CSV file and filter only rows where the 3rd column (Pclass) is 2
# Step 2: Remove carriage returns from the file
# Step 3: Filter rows where the last column (Embarked) is 'S' (Southampton)
# Step 4: Replace "male" with "M" and "female" with "F"
# Step 5: Calculate the average age of the filtered rows, excluding rows with missing or non-numeric age values

gawk -F, '$3 == 2 {print $4 "," $5 "," $6, "," $7}' titanic.csv | sed 's/\<male\>/m/; s/\<female\>/f/' | gawk -F, ' {sum += $4; count++} END {if (count > 0) print "Mean age:"sum / count}'
