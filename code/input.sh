#!/bin/bash

# 1) Author: gergo
# 2) Created: 20260313
# 3) Last Modiied: 20260313

# 4) Description: an example of read and select commands
# 5) Usage: ./input.sh <timeout>

timeout=$1

PS3="please select a day: "

select day in mon tue wed thu fri sat sun
do
    echo "you selected ${day}"
    break
done

case "${day}" in
  "mon") echo "hi monday";;
  "tue") echo "hi tuesday";;
  "wed") echo "hi wednesday";;
  "thu") echo "hi thursday";;
  "fri") echo "hi friday";;
  "sat") echo "hi saturday";;
  "sun") echo "hi sunday";;
  *) echo "invalid day";;
esac

read -t ${timeout} -n 10 -p "please enter your name: " name

if [[ -z ${name} ]];then
  echo "\nrun out of ${timeout} seconds to answer"
else
  echo "\nyou entered ${name} within ${timeout} seconds or less"
fi