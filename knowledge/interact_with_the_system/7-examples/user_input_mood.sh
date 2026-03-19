#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20231206
#3) Last Modified: 20240131

#4) Description: collecting and printing user inputs
#5) Usage: ./user_input_mood.sh your_name

echo "hi $1!"
echo "the number of chars of your input is: ${#1}"

PS3="please select an option (1-7):"
select day in mon tue wed thu fri sat sun;do
	echo "the selected day is: $day"
	break
done

read -p "your mood on ${day}:" mood

echo "hi $1! based on your answers your mood is ${mood} on ${day}. thank you!"

exit 0