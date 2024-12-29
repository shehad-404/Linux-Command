# K) Regular Expression 
## Regular Expression = has ability to find Complex Pattern Matching 
## Uses in = Search Engine, Programming Languages, Text Processing Applications

#### Searching with Regular Expressions
**1: The File contains some Numbers**
```
cat numbers.txt
```
#### we need to findout the Numbers Greater or  than equal to 42 (>=42)
**2: \d = any Digit from 0 to 9**
```
'^4[2-9] | [5-9]\d | \d{3,}$'
```

#### Finding Numbers =>42 for Regular Expression in Linux:
**3: \d replaced by [0-9]**
```
grep -E '^4[2-9]|[5-9][0-9]|[0-9]{3,}$' numbers.txt
```
**4: same as Command num (2) ([[:digit:]] = [0-9])**
```
grep -E '^4[2-9]|[5-9][[:digit:]]|[[:digit:]]{3,}$' numbers.txt
```




