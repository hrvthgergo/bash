#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20231211
#3) Last Modified: 20231211

#4) Description: while loop usage
#5) Usage: trial

#6) Call: ./while.sh -s/-n "argument"

while getopts "s:n:" opt; do

    echo "OPTARG=$OPTARG"

    case "$opt" in
    s)  input="$OPTARG";;
    
    n)  input="$OPTARG";;

    \?) echo "invalid option used!"
        exit 1;;

    esac

done

while read line; do
    echo "line-by-line:"
    echo "$line"
done < <(echo "$input")

exit 0