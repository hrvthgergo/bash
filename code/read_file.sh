#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20231211
#3) Last Modified: 20231211

#4) Description: collecting and printing file
#5) Usage: trial

while read line; do

    echo "$line"

done < ./file.txt

# or

file=$(cat file.txt)

echo "$file"

exit 0