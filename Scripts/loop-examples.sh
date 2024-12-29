#!/bin/bash
# For Loop Examples
echo ---------------------------------
echo For Loops
# Iteration 1 to 5
echo Print out a Hard-coded sequence
for i in 1 2 3 4 5; do
	echo Index=[$i]
done
# Iteration 1 to 5 (same as above)
echo Print out a Generated sequence
for i in {1..5}; do
	echo Index=[$i]
done
# Same as above
echo Print out a Generated sequence using the 3-expression format
for ((i=1;i<=5;i++))
do
	echo Index=[$i]
done
# Print out the Last Line of each Shell Script in the Current Dir
echo Print out the Last Line of each Shell Script 
for FILE in *.sh
do
	echo =====================================
	echo file=[$FILE]
	tail -n l $FILE
done
echo ''
echo ----------------------------------
echo While Loop
# Count Down to Blastoff
echo Executing a while loop to countdown to blasstoff
counter=5
while[[$counter -gt 0]]; do
	echo Countdown [$counter]
	counter=$(($counter -1))
done
echo Blastoff




