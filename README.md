# a) Basic Command Lines

**1: Clear all commands in Console**

```bash
clear
```
**2: Returns user name**

```bash
whoami
```
**3: Returns host name**

```bash
hostname
```
**4: Shows current working directory**

```bash
pwd
```
**5: Shows the list of directory contents**

```bash
ls
```
**6: Change directory**

```bash
cd
```
**7: Go back to current directory**

```bash
cd ..
```

# Getting Help through Command Line
**8: Get help on given Command line(ls or other commands)**

```bash
man ls
```
**9: Shows the infirmation of given Command line(ls)**

```bash
info ls
```
**10: Get help on Command line**

```bash
ls --help
```
# Command Line Arguments & Options
**11: Using short format(-al) for command**

```bash
ls -al
```

**12: Using extended format(--all) for command**

```bash
ls --all -l 
```
**13: Shows/prints the text file**

```bash
more file_name.txt
```
**14: Shows the less lines in the text file**

```bash
less file_name.txt
```
**15: Ignoring the files**

```bash
ls -I "file_name*" 
```
**16: Ignoring the files**

```bash
ls --ignore="file_name*"
```

# Looking more Files using cat Command

**17: Prints the file and also concatenates the file**

```bash
cat file_name.txt
```
**18: Firstly Print the "file.txt" and then Print "File2.txt"**

```bash
cat file.txt file2.txt
```
**19: Firstly Print the "file2.txt" and then Print "File.txt"**

```bash
cat file2.txt file.txt
```
**20: Numbering all non-empty lines**

```bash
cat -b file.txt file2.txt
```
**21: Numbering all the Lines**

```bash
cat -n file.txt file2.txt
```
**22: Combine two files and give a file name(combine.txt)**

```bash
cat file1.txt file2.txt > combine.txt 
```
**23: Creating file and Writing the file**

```bash
cat > new-file.txt 
```


# b) Files and the Filesystem

**1: Shows how file System Hiererchy/distribution organized**

```bash
man hier
```
