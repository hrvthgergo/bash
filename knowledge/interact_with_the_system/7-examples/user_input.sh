#!/bin/bash

#1) Author: Gergo Horvath
#2) Created: 20240131
#3) Last Modified: 20240131

#4) Description: collecting and printing user inputs
#5) Usage: ./user_input.sh param1 param2 param3

echo "the script name is: $0, and the number of command line args is: $#."
echo "arguments are: $@"
echo "this is the first positional parameter -> $1"
shift
echo "the number of command line args after shift: $#."
echo "this is the second positional parameter -> $1"

read -p "please type a 4 digit long number within 10 seconds:" -n 4 -t 10 -s four_digit_num
echo ${four_digit_num}

PS3="Please select an option (1-3):"
select option in option1 option2 option3;do
    echo "the selected option is: ${option}."
    break
done

# i should use $2 because i shifted $1 in the 12th row.
echo "this is the third positional parameter -> $2"
echo "the process id: $$"
echo "the last exit code: $?"

exit 0