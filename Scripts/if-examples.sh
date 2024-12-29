#!/bin/bash
# if-else Conditional Statements
if [[ -d /etc/ ]]; then
	echo /etc/ is indeed a Directory
fi
if [[ -e sample.txt ]]; then
	echo The file sample exists
else
	echo The File sample does Not exist
fi
# TEST_VAR = "test"
# if [[ $TEST_VAR == "test" ]]; then
#	echo TEST_VAR has a value of "test"
# elif [[ $TEST_VAR == "again" ]]; then
#	echo TEST_VAR has a value of "again"
# else
#	echo TEST_VAR has an Unknown value
# fi
# Nothing
