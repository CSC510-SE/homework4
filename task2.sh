grep -rl "sample" * | xargs grep -o "CSC510" | uniq -c | awk '$1 >= 3' | sort -k1,1nr | sed 's/file_/filtered_/g'