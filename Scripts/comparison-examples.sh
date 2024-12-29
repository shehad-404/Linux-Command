#!/bin/bash
# Numerical Comparison
x=1
echo x=["$x"]
y=2
echo y=["$y"]
z=3
echo z=["$z"]
# ne = Not equal
if [["$x" -ne "$y"]]; then
	echo ["$x"] ne ["$y"]
fi
# eq = Equals to
if [["$y" -eq "$z"]]; then
	echo ["$y"] eq ["$z"]
fi
# gt = Greater than
if [["$y" -gt "$x"]]; then
	echo ["$y"] gt ["$g"]
fi
# ge = Greater than or Equals to
if [["$y" -ge "$z"]]; then
	echo ["$y"] ge ["$z"]
fi
# lt = Less than
if [["$x" -lt "$y"]]; then
	echo ["$x"] lt ["$y"]
fi
# le = Less than or Equals to
if [["$y" -le "$z"]]; then
	echo ["$y"] le ["$z"]
fi
# Now Perform String Comparison
# Create Some Variables
a="A"
echo a=["$a"]
b="B"
echo b=["$b"]
anotherA="A"
echo anotherA=["$anotherA"]
# Perform Comparison
# Equals 
if [["$a"=="$anotherA"]]; then
	echo ["$a"] "==" ["$anotherA"]
fi
# Not Equals 
if [["$a"!="$b"]]; then
	echo ["$a"] "!=" ["$b"]
fi
# Less than
if [["$a"<"$b"]]; then
	echo ["$a"] "<" ["$b"]
fi
# Greater than
if [["$b">"$a"]]; then
	echo ["$b"] "==" ["$a"]
fi



















