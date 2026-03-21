#!/bin/bash

# 1) Author: gergo
# 2) Created: 20260313
# 3) Last Modiied: 20260313

# 4) Description: an example of read and select commands
# 5) Usage: ./input.sh <timeout> <word1> <word2>

timeout=$1

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

echo "the $0 script received $# number of arguments"
echo "the arguments are: $@"
echo "the first argument is: $1"

shift 2

echo "the new first argument after shift 2 is: $1"

PS3="please select a day: "
select day in mon tue wed thu fri sat sun; do
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
  *) err "invalid day"
     exit 1;;
esac

read -t ${timeout} -n 10 -p "please enter your name: " name

if [[ -z ${name} ]];then
  err "run out of ${timeout} seconds to answer"
  exit 1
else
  echo "you entered ${name} within ${timeout} seconds or less"
fi

exit 0