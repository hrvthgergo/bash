#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20240204
#3) Last Modified: 20240204

#4) Description: getopts usage examples
#5) Usage: ./hetopts.sh -s/-n "argument"

getopts "s:n:" opt

case "$opt" in
    s) echo "argument -> $OPTARG";;
    n) echo "argument -> $OPTARG";;
    \?) echo "invalid option."
        exit 1;;
esac

exit 0

