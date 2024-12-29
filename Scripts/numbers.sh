#!/bin/bash
# if-else Statements

echo -e "Guess Number between 1 to 10: \c"
read guess

if [ $guess == 6 ]; then
	echo "Correct"
elif [ $guess != 6 ]; then
	echo False
fi
