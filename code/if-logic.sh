#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20231207
#3) Last Modified: 20231207

#4) Description: if logic usage
#5) Usage: trial

read -t 10 -s -p "please enter a secret number beetwen 0 and 20:" num

if [ $num -lt 10 ];then
    echo "your number is lower than 10"
elif [ $num -eq 10 ];then
    echo "your number is 10"
elif [ $num -gt 10 ] && [ $num -lt 20 ];then
    echo "your number is beetween 10 nad 20"
else
    echo "your number is 20"
fi

exit 0