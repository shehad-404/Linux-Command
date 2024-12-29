#!/bin/bash
# Case Example
# Switch Case
case $1 in
[1-3])
	message="Argument is between 1 and 3 inclusive"
	;;
[4-6])
	message="Argument is between 4 and 6 inclusive"
	;;
[7-9])
	message="Argument is between 7 and 9 inclusive"
	;;
1[0-9])
	message="Argument is between 10 and 19 inclusive"
	;;
*)
	message="I Don't unnderstand the Argument or it is missing"
	;;
esac
# Now Print the Message
echo $message