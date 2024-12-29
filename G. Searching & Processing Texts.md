# G) Searching & Processing Texts 
## grep, egrep, fgrep, rgrep >>>> print lines that match patterns
### (grep >>>> searches  for  PATTERNS in each FILE, wc = Word Count, -v = omitting the words without specific letters )

**1: Search Pattern "shehad" in the file**
```
grep shehad word-list.txt
```
**2: search word does not have "e" letters**
```
grep -v e word-list.txt | less
```
**3: search "error" patterns in files**
```
grep error /var/log/*.log
```
**4: search error separate with matching goups in patterns with "error"**
```
grep error -B 3 -A 2 /var/log/*.log
```
**5: Sorting the word Alphabetically Ascending order in the file**
```
sort word-list.txt
```
**6: Sorting the word Alphabetically Ascending order in the file (Same works as number "5" command)**
```
cat word-list.txt | sort
```
**7: Sorting the numbers Descending Order**
```
sort -nr random-numbers.txt
```
**8: Sorting the numbers Descending Order  (Same works as number "7" command)**
```
cat random-numbers.txt | sort -nr
```
**9: Filter(Omit) adjacent matching lines**
```
uniq word-list.txt
```
**10: Both Sorted lines & Omit adjacen matching lines**
```
sort word-list.txt | uniq
```
**11: Count Number of Words, Lines in Bytes**
```
wc word-list.txt
```
**12: Count num of Words "Shehad" in the file**
```
grep Shehad word-list.txt | wc -l
```
**13: Sorted the words without letters "e"**
```
grep -v e word-list.txt | sort
```
**14: Sorted the words Uniquely without letters "e"**
```
grep -v e word-list.txt | sort | uniq
```
**15: Number of Words by Sorting the words Uniquely without letters "e"**
```
grep -v e word-list.txt | sort | uniq | wc -l
```


## Manipulating the Texts 
## sed = stream editor for filtering and transforming text >>>> Substitute or Delete the words
**16: shows files content**
```
cat sample.txt
```
**17: s = substitute, "Suite" word Abrevation is = "Ste" in the file**
```
sed 's/Suite/Ste/' sample.txt
```
**18: Substitute only 1st Word "Suite" by "Ste" but not 2nd word "Suite"**
```
echo Suite Suite | sed 's/Suite/Ste/'
```
**19: Substitute both word("Suite") using Global var "g"**
```
echo Suite Suite | sed 's/Suite/Ste/g'
```
**20: Substitute only Last word "Suite"**
```
sed '$s/Suite/Ste/' sample.txt
```
**21: Deletes the entire line when it matches the word "Suite"**
```
sed '/Suite/d' sample.txt
```
**22: Search Pattern "Suite"**
```
grep Suite sample.txt
```
**23: word "Suite" Substitute by "Ste" when "ee" & "Suite" matches in the same Line**
```
sed '/ee/ s/Suite/Ste/g' sample.txt	
```
**24: Add a New Line("\n") at the end of Each Lines**
```
sed 's/$/\n/g' sample.txt
```
**25: Add a New Line("\n") at the end of Each Lines and when it finds a Comma(",")**
```
sed 's/$/\n/g' sample.txt | sed 's/,/\n/g'
```
**26: Add a New Line("\n") at the end of Each Lines and when it finds a Comma(",")(same as num 25 Command)**
```
sed -e 's/$/\n/g' -e 's/,/\n/g' sample.txt
```
### awk = pattern scanning and processing language
**27: print the value 2 number word "Shehad" [$1 = Linux; $2 = Shehad; $3 = Sally] likes an Array**
```
echo Linux Shehad Sally | awk '{print $2}'
```
**28: it'll print "Sally likes Shehad"**
```
exho Linux Shehad Sally | awk '{print $3, "likes", $2}'
```
**29: print the words(Name) before it finds first("$1") Comma(",") in each lines**
```
awk -F ',' '{print $1}' sample.txt	
```
**30: print 2nd Name then Comma(",") then 1st Name**
```
awk -F ',' '{print $1}' sample.txt | awk '{print $2, ", ", $1}'
```
**31: print the Name("$1") only the lines have word "Dakota"**
```
awk -F ',' '/Dakota/ {print $1}' sample.txt	
```
**32: print the Name("$1") with the Num("NR") of Lines having word "Dakota"**
```
awk -F ',' '/Dakota/ {print NR,$1}' sample.txt
```
### tr = Translate or Delete characters
**33: All the Commas(",") Transformed/Translate by a Tab("\t")**
```
cat sample.txt | tr ',' '\t' 
```
**34: All the LowerCase Letter("a-z") Transformed by UpperCase Letter("A-Z")**
```
cat sample.txt | tr 'a-z' 'A-Z'
```
**35: All the LowerCase Letter("a-z") Transformed by UpperCase Letter("A-Z") using set [same as Command 34]**
```
cat sample.txt | tr '[:lower:]' '[:upper:]'
```
## Converting Text Files
**36: Identifies the type of "*."txt files and shows whether they are using DOS, Unix, or MacOS line termination**
```
file *.txt
```
**37: vim Editor for  seeing the files >>> Opens sample-dos-file.txt in the vim text editor to view or edit the file.**
```
vim sample-dos-file.txt
```
**38: vim Editor for MacOS seeing the files**
```
vim sample-macos-file.txt
```
**39: Copies sample-unix-file.txt to a new file named temp.txt.**
```
cp sample-unix-file.txt temp.txt
```
**40: Converts the temp.txt file from Unix line endings (LF) to DOS format (CRLF).**
```
unix2dos temp.txt
```
**41: Checks the file type and confirms that temp.txt is now in DOS format.**
```
file temp.txt
```
**42: Deletes the temp.txt file.**
```
rm temp.txt	
```
**43: Converts sample-unix-file.txt to DOS format and saves it as temp.txt, without modifying the original file.**
```
unix2dos -n sample-unix-file.txt temp.txt
```
**44: Confirms that temp.txt is now in DOS format.**
```
 file temp.txt
```
**45: Copies sample-unix-file.txt to temp.txt.**
```
cp sample-unix-file.txt temp.txt
```
**46: Verifies the format of temp.txt.**
```
file temp.txt
```
**47: Converts temp.txt to MacOS format (CR line endings).**
```
unix2dos -c mac temp.txt
```
**48: Confirms that temp.txt is now in MacOS format.**
```
file temp.txt
```
**49: Deletes the temp.txt file.**
```
rm temp.txt
```
**50: Copies sample-dos-file.txt to temp.txt.**
```
cp sample-dos-file.txt temp.txt
```
**51: Converts temp.txt from DOS line endings to Unix line endings.**
```
dos2unix temp.txt
```
**52: Verifies that temp.txt is now in Unix format.**
```
file temp.txt
```
**53: Deletes temp.txt.**
```
rm temp.txt	
```
**54: Copies sample-macos-file.txt to temp.txt.**
```
cp sample-macos-file.txt temp.txt
```
**55: Converts temp.txt from MacOS format (CR line endings) to Unix format.**
```
dos2unix -c mac temp.txt
```

