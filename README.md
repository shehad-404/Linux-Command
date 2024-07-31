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
# File System Hiererchy & Device Partitions and Mounting
**1: Shows how file System Hiererchy/distribution organized**

```bash
man hier
```
**2: Shows how deivice Partitions are mounted can be found**

```bash
less /etc/fstab
```
**3: Mount command points diiferent mount partitions**

```bash
mount 
```
**4: Show disc Size human redable(Giga-bite formate)**

```bash
 df -h
```
**5: Size of Home Directory**

```bash
du -sh ~
```

# Absolute & Relative Paths 

**6: Absolute path >>> All derectories are shown**

**7: Relative Path 	>>> All dir must not shown**


# Working with Files & Directories

**8: Shows Last modification Time of files**

```bash
ls -l file_name.txt 
```
**9: Update the modification Time and Execute (if file doesn't exist then it'll Create the file)**

```bash
touch file_name
```
**10: Copy files/directories Source to Destination**

```bash
cp source_file destination_file
```
**11: Move or Rename files Source to Destination**

```bash
mv source_file destination_file
```
**12: Using mv Rename folders Source to Destination**

```bash
mv old_folder new_folder
```
**13: Remove files**

```bash
rm file_name.txt
```
**14: Make directory**

```bash
mkdir  dir_name
```
**15: Remove directory**

```bash
rmdir  dir_name
```
**16: Remove non-empty directory**

```bash
rmdir  non-empty-dir/
```
**17: Recursilvely Delete all contents of directory**

```bash
rm -rf non-empty-dir/
```

# Spaces in File and Directory Names 
**It is not Recommended to keep Space in "File Name" or "Folder/Dir Name"**

**18: Use "\" for avoiding space problems**
```bash
cat file\ name.txt
```
**19: Use single quote(' ') for avoiding space problems**
```bash
cat 'file name.txt'
```
**20: Use double quote(" ") for avoiding space problems**
```bash
cat "file name.txt"
```
