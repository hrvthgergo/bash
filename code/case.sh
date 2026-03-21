#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20231207
#3) Last Modified: 20231207

#4) Description: case statement usage
#5) Usage: trial

read -p "please enter a number:" num

case "$num" in
[0-9]) echo "entered a one digit number";;
[0-9][0-9]) echo "entered a two digit number";;
[0-9][0-9][0-9]) echo "entered a three digit number";;
*) echo "entered a really big number";;
esac

exit 0