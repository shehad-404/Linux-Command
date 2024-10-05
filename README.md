# Topics Covered:

**A) Basic Command lines**
**B) Files and the Filesystem**
**C) Users and Groups**
**D) Installing Software**
**E) Shell Basics**
**F) Redirecting I/O**
**G) Searching & Processing Texts**
**H) Common Utilities**
**I) File Editors**
**J) Process Management**
**K) Regular Expressions**
**L) Shell Scripting**

# A) Basic Command Lines

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

## Getting Help through Command Line
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
## Command Line Arguments & Options
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

## Looking more Files using cat Command

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


# B) Files and the Filesystem
## File System Hiererchy & Device Partitions and Mounting
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

## Absolute & Relative Paths 

**6: Absolute path >>> All derectories are shown**

**7: Relative Path 	>>> All dir must not shown**


## Working with Files & Directories

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

## Spaces in File and Directory Names 
**It is not Recommended to keep Space in "File Name" or "Folder/Dir Name"**

**18: Use " \ " for avoiding space problems**
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

## File & Path Expansion(Finding nearly same files)

**21: Finding nearly same files**
```bash
ls file*.txt
```
**22: Finding nearly same files**
```bash
ls file?.txt
```
**23: Finding nearly same files in defferent Folders**
```bash
ls **/*.txt	
```
**24: Finding nearly same files(file1, file2, file3) in defferent Folders(**)**
```bash
ls **/file[123].txt	
```
**25: Finding nearly same files(file1, file2, file3) in defferent Folders(**)**
```bash
ls **/file[1-3].txt
```
**26: Finding nearly same files in defferent Folders**
```bash
ls **/file[a-zA-Z0-9].txt
```

## More commands in Files(head, tail & diff Commands)

**27: Display first 10 lines of files**
```bash
head file.txt
```
**28: Display first 5 lines**
```bash
head -n 5 file.txt
```
**29: Display first 5 lines**
```bash
head -5 file.txt
```
**30: Display last 10 lines**
```bash
tail file.txt
```
**31: Display last 5 lines**
```bash
tail -5 file.txt
```
**32: Gives temporarly Administritive priviliges**
```bash
tail -f /var/log/auth.log
```
**33: Difference between two files line by line**
```bash
diff file1.txt file2.txt
```

## Hard and Soft FileSystem Links

**34: Create a Hard link named hello-hard-link.txt from the Original file hello.txt**
```bash
ln hello.txt hello-hard-link.txt
```
**35: Edit the files using vim Editor (back to shell using Alt+: then Shift+: then press w+q)**
```bash
vim hello.txt 
```
**36: After deleting the Original file(hello.txt) we can Retrive again through hard-link file**
```bash
ln hello-hard-link.txt  hello.txt
```
**37: Create a Soft Link named hello-soft-link.txt from hello.txt file(After deleting the original file can't be retrieve)**
```bash
ln -s ./hello.txt hello-soft-link.txt
```

## Compressing(zip) and Archiving(unzip) files and folders

**38: Compressing(Zip) the files**
```bash
zip zip_file_name.zip file1.txt file2.txt file3.txt
```
**39: Extracting(Unzip) the files**
```bash
unzip -l zip_file_name.zip	
```
**40: Compressing(Zip) the Folders/Directories [dir=directories]**
```bash
zip zip_dir_name.zip dir1 dir2 dir3
```
**41: Extracting(Unzip) the directory**
```bash
unzip -l zip_dir_name.zip	
```
**42: Recursively added Files for Compressing(Zip) the Folders/Directories**
```bash
zip -r zip_dir_name.zip dir1 dir2 dir3
```

## Searching in the File System(find, locate, which, whichis Commands)

**43: Search for files in a directory hierarchy**
```bash
find . -name 'file*.txt'
```
**44: Insensitive Search for files in a directory hierarchy**
```bash
find . -iname 'file*.txt'
```
**45: Search all location for file.txt**
```bash
locate file.txt
```
**46: Find all files that match the pattern name "file"**
```bash
locate file*.txt
```
**47: Find the path of command(here "ls" is used) which is executed**
```bash
which ls
```
**48: Find the executable source code path for man pages utilities**
```bash
whereis ls 
```

# C) Users and Groups

**1: Shows Users of Linux Systems**
```bash
users
```
**2: Shows Details of Users**
```bash
who
```
**3: More information of users**
```bash
w
```
**4: Information about users and password**
```bash
less /etc/passwd
```
**5: Group information**
```bash
less /etc/group
```
**6: Shows different Users & Group**
```bash
ls -la /home	
```

## Change File & Directory Permissions(chmod, chown)

**7: Long listing files**
```bash
ls -l
```
**8: Shows available file permission(r=read, w=write, x=execution)**
```bash
ls -l hello.txt
```
**9:  modify the permissions of the file**
```bash
chmod g-w hello.txt
```
**10: Modify permissions for a = all users no permissions, u = users, r = re-use**
```bash
chmod a=,u=r hello.txt
```
**11: Octalic Mode permissions for Users, Groups & Others. rw = (4+2)=6, rw=6, r = 4;	[r = 2^2 = 4; w = 2^1 = 2, x = 2^0 = 1]**
```bash
chmod 664 text.txt	
```
**12: change file owner (shehad to sally**
```bash
sudo chown sally hello.txt
```
**13: change file group**
```bash
sudo chgrp sally hello.txt
```

## 
## changing users

**14: Detailed information about the /etc/shadow file**
```bash
ll /etc/shadow
```
**15: Display contents of the file**
```bash
cat /etc/shadow
```
**16: Execute as a Root user for file**
```bash
sudo cat /etc/shadow
```
**17: Display the contents**
```bash
cat /home/sally/sample.txt
```
**18: Display the detailed information**
```bash
ll /home/sally/sample.txt
```
**19: Temporarly execute the file changing users through root permissions(using sudo)**
```bash
sudo -u sally cat /home/sally/hello.txt 
```
**20: Changing current users to sally(changing users shehad to sally)**
```bash
su sally
```

## Changing users Password

**21: Changing user Password for shehad( enter user shehad password "passwd" then type "New passwd" then retype "New passwd")**
```bash
passwd
```
**22: Changing others User's(sally) Password**
```bash
sudo passwd sally
```

# D) Installing Software
## Package Management: Debian System(dpkg)

**1: Updates the package lists from the repositories to get information on the latest versions of packages.**
```bash
apt update
```
**2: Lists all packages that have newer versions available and can be upgraded.**
```bash
apt list --upgradble
```
**3: Installs the latest versions of all packages currently installed on the system.**
```bash
apt upgrade
```
**4: Shows the location of the pdftk command if it is installed on the system.**
```bash
which pdftk		
```
**5: Searches for the package pdftk and related packages in the repositories.**
```bash
apt search pdftk 
```

**6: Displays detailed information about the pdftk package, such as its version, description, dependencies, and more.**
```bash
apt show pdftk
```
**7: Installs the pdftk-java package on the system.**
```bash
apt install pdftk-java
```
**8: Removes the pdftk-java package but leaves its configuration files intact.**
```bash
apt remove pdftk-java
```
**9: Completely removes the pdftk-java package, including its configuration files.**
```bash
apt purge pdftk-java	
```

**10: Removes packages that were automatically installed as dependencies but are no longer needed.**
```bash
apt autoremove
```


##  Package Management: RedHat Systems
**11: Checks for available updates for installed packages.**
```bash
sudo yum check-update
```
**12: Updates all installed packages to the latest available versions.**
```bash
sudo yum update
```
**13: Searches for the qpdf package in the repositories.**
```bash
yum search qpdf
```
**14: Displays detailed information about the qpdf package, including version, description, and dependencies.**
```bash
yum info qpdf
```
**15: Installs the qpdf package on the system.**
```bash
sudo yum install qpdf
```
**16: Shows the location of the qpdf command if it is installed on the system.**
```bash
which qpdf
```
**17: Removes the qpdf package from the system.**
```bash
sudo yum remove qpdf
```



# E) Shell Basics 

## Common Line Command Shells
**1: Refers to the KornShell, a Unix shell developed by David Korn that offers backward compatibility with the Bourne shell (sh).**
```
ksh
```
**2: The C shell, a Unix shell created by Bill Joy that uses syntax similar to the C programming language.**
```
csh
```
**3: An enhanced version of the C shell (csh), with additional features like command-line editing and spell checking.**
```
tcsh
```
**4: Z shell, an advanced and feature-rich shell that is the default shell in Kali Linux.**
```
zsh
```

## Environment Varaibles >>>> (1) Local Varaible = Shell Variable	 (2) Global varaible = Environment Varaibale;
**5: Displays all environment variables and their values in the current shell session.**
```
printenv
```

### Local Variable 
**6: Creates a local variable COUNT_LOCAL and assigns it the value 42. It exists only in the current shell.**
```
COUNT_LOCAL=42
```
**7: Prints the value of the local variable COUNT_LOCAL to the terminal.**
```
echo $COUNT_LOCAL
```
**8: Launches a new subshell, which will not inherit local variables from the parent shell.**
```
bash
```

### Global Variable
**9: Creates a global (environment) variable COUNT_GLOBAL with a value of 55. This variable will be available to all subshells.**
```
export COUNT_GLOBAL=55
```
**10: Displays the value of the global variable COUNT_GLOBAL.**
```
echo $COUNT_GLOBAL
```
**11: Opens a new subshell in which the global variable COUNT_GLOBAL will still be available.**
```
bash
```
**12: Removes the global variable COUNT_GLOBAL from the environment.**
```
unset COUNT_GLOBAL
```

### Startup Files >>> There are 3 types of Shells(non-login Shell is one of them)
**13: Lists all files in the current directory, including hidden files, with detailed information like permissions, owner, and size.**
```
ls -al
```
**14: Opens the .bashrc file (a startup file for bash shells) in the nano text editor. This file contains configurations and aliases that run when a new bash session starts.**
```
nano .bashrc
```

#### Creating alias Command(works as a Keyboard Shortcut Command)
**15: Displays all the currently defined aliases for the shell session.**
```
alias
```
**16: Creates an alias del for the command rm -rfi, which removes files or directories recursively with interactive prompts and force.**
```
alias del='rm -rfi'
```
**17: Creates an alias c for the clear command, which clears the terminal screen.**
```
alias c='clear'
```
**18: Reloads the .bashrc file in the current shell session so that the changes (like aliases) take effect immediately without opening a new terminal.**
```
source .bashrc
```


## Command History:
**19: Displays the history of all executed commands in the shell.**
```
history
```
**20: Pipes the history command output to less for easier scrolling.**
```
history | less
```
**21: Re-executes the command numbered 191 from the command history.**
```
!191
```
**22: Re-executes the previous command from the history.**
```
!-1
```
**23: Executes the last command entered.**
```
!!
```
**24: Also can change history command using UP(↑) or Down(↧) Arrow**
```

```
**25: Re-executes the last command that starts with cat.**
```
!cat
```
**26: Replaces file1.txt with fileA.txt in the previous command and re-executes it.**
```
^file1.txt^fileA.txt^
```
**27: Displays the last few commands from the command history.**
```
history | tail
```
**28: Displays the contents of the .bashrc file in the less viewer.**
```
less .bashrc
```

## Command Substituition 
**29: Displays the contents of the file file-list.txt.**
```
cat file-list.txt
```
**30: Sends the contents of file-list.txt to ls -l, though this is not a common or useful combination.**
```
cat file-list.txt | ls -l
```
**31: Uses file-list.txt as input to the ls -l command (though this doesn’t typically make sense with ls).**
```
ls -l < file-list.txt
```
**32: Executes the cat file-list.txt command first, then uses its output as arguments to |s -|**
```
ls -l `cat file-list.txt`
```
**33: Similar to the previous command but uses $(...) instead of backticks for command substitution.**
```
ls -l $(cat file-list.txt)
```





# F) Redirecting Input & Output
**1: Lists the contents of the /root directory (requires superuser privileges).**
```
sudo ls /root
```
**2: Lists the contents of the /etc/ directory, which contains configuration files.**
```
ls /etc/
```
**3: Redirects the output of the ls command to a file called dir-contents.txt in the home directory (~).**
```
ls /etc/ > ~/dir-contents.txt
```
**4: Opens the dir-contents.txt file with the less command, which allows for scrolling through the contents.**
```
less ~/dir-contents.txt
```
**5: Lists the contents of the /tmp/ directory, which is used for temporary files.**
```
ls /tmp/
```
**6: Overwrites the previous dir-contents.txt file with the contents of the /tmp/ directory.**
```
ls /tmp/ > ~/dir-contents.txt
```
**7: Displays the updated dir-contents.txt file with the contents of /tmp/.**
```
less ~/dir-contents.txt
```
**8: Appends the output of ls /etc/ to the dir-contents.txt file instead of overwriting it.**
```
ls /etc/ >> ~/dir-contents.txt
```
**9: Shows the dir-contents.txt file with both /etc/ and /tmp/ directory listings.**
```
less ~/dir-contents.txt
```
**10: Displays the first 10 lines of the /etc/passwd file, which contains user account information.**
```
head /etc/passwd
```
**11:Also displays the first 10 lines of /etc/passwd using input redirection.**
```
head < /etc/passwd
```
**12: Searches the entire file system for a file named sample.txt.**
```
find / -name 'sample.txt'
```
**13: Redirects all errors to a file named errors.txt (for example, permission denied errors).**
```
find / -name 'sample.txt' 2> errors.txt
```
**14: Displays the contents of errors.txt, showing any errors from the previous command.**
```
less errors.txt
```
**15: Suppresses error messages by redirecting them to /dev/null (a special file that discards all data written to it).**
```
find / -name 'sample.txt' 2> /dev/null
```
**16: Displays the contents of /dev/null, which is always empty.**
```
cat /dev/null
```
**17: Redirects both the standard output and standard error to all.txt.**
```
find / -name 'sample.txt' &> all.txt
```
**18: Displays the contents of all.txt, showing both output and error messages.**
```
less all.txt
```
**19: Redirects both output and error messages to the same file (all.txt), using a different syntax.**
```
find / -name 'sample.txt' > all.txt 2>&1
```
**20: Displays the contents of all.txt.**
```
less all.txt
```
**21: Redirects the output to location.txt and suppresses error messages.**
```
find / -name 'sample.txt' > location.txt 2> /dev/null
```
**23: Displays the contents of location.txt.**
```
cat location.txt
```

## Pipes (denoted by "|") >>> coneection between redirection in and out  >>> we can modify ***output*** using Pipes
**24: Pipes the output of ls -l /etc/ to the less command, allowing you to scroll through the output.**
```
ls -l /etc/ | less
```
**26: Pipes the output of the find command to less to view the results one screen at a time.**
```
find / -name 'sample.txt' | less
```
**27: Pipes both the output and error messages of the find command to less.**
```
find / -name 'sample.txt' |& less
```



# G) Searching & Processing Texts >>>> grep, egrep, fgrep, rgrep >>>> print lines that match patterns (grep >>>> searches  for  PATTERNS in each FILE, wc = Word Count, -v = omitting the words without specific letters )

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
**16: **
```

```
**17: **
```

```
**18: **
```

```
**19: **
```

```
**20: **
```

```
**21: **
```

```
**22: **
```

```
**23: **
```

```
**24: **
```

```
**25: **
```

```
**26: **
```

```
**27: **
```

```
**28: **
```

```
**29: **
```

```
**30: **
```

```
**31: **
```

```
**32: **
```

```
**33: **
```

```
**34: **
```

```
**35: **
```

```
## Converting Text Files
**36: **
```

```
**37: **
```

```
**38: **
```

```
**39: **
```

```
**40: **
```

```
**41: **
```

```
**42: **
```

```
**43: **
```

```
**44: **
```

```
**45: **
```

```
**46: **
```

```
**47: **
```

```
**48: **
```

```
**49: **
```

```
**50: **
```

```
**51: **
```

```
**52: **
```

```
**53: **
```

```



# H) More Utilities (Networking + File Transfer)
**1: **
```

```
**2: **
```

```
**3: **
```

```
**4: **
```

```
**5: **
```

```
**6: **
```

```
**7: **
```

```
**8: **
```

```
**9: **
```

```
**10: **
```

```
**11: **
```

```
**12: **
```

```
**13: **
```

```
**14: **
```

```
**15: **
```

```
**16: **
```

```
**17: **
```

```
**18: **
```

```
**19: **
```

```
**20: **
```

```
**21: **
```

```
**22: **
```

```
**23: **
```

```
**24: **
```

```
**25: **
```

```
**26: **
```

```
**27: **
```

```
**28: **
```

```
**29: **
```

```
**30: **
```

```
**31: **
```

```
**32: **
```

```
**33: **
```

```
**34: **
```

```
**35: **
```

```
**36: **
```

```
**37: **
```

```
**38: **
```

```
**39: **
```

```
**40: **
```

```



# I) File Editors 

**1: **
```

```
**2: **
```

```
**3: **
```

```

# J) Process Management 

**1: **
```

```
**2: **
```

```
**3: **
```

```
**4: **
```

```
**5: **
```

```
**6: **
```

```
**7: **
```

```
**8: **
```

```
**9: **
```

```
**10: **
```

```
**11: **
```

```
**12: **
```

```
**13: **
```

```
**14: **
```

```
**15: **
```

```
**16: **
```

```
**17: **
```

```
**18: **
```

```
**19: **
```

```
**20: **
```

```
**21: **
```

```
**22: **
```

```
**23: **
```

```
**24: **
```

```
**25: **
```

```
**26: **
```

```
**27: **
```

```
**28: **
```

```
**29: **
```

```
**30: **
```

```
**31: **
```

```
**32: **
```

```
**33: **
```

```
**34: **
```

```
**35: **
```

```
**36: **
```

```
**37: **
```

```
**38: **
```

```
**39: **
```

```
**40: **
```

```

# K) Regular Expression 
**1: **
```

```
**2: **
```

```
**3: **
```

```
**4: **
```

```
**5: **
```

```




# L) Shell Scripting 

**1: **
```

```
**2: **
```

```
**3: **
```

```
**4: **
```

```
**5: **
```

```
**6: **
```

```
**7: **
```

```
**8: **
```

```
**9: **
```

```
**10: **
```

```
**11: **
```

```
**12: **
```

```
**13: **
```

```
**14: **
```

```
**15: **
```

```
**16: **
```

```
**17: **
```

```
**18: **
```

```
**19: **
```

```
**20: **
```

```
**21: **
```

```
**22: **
```

```
**23: **
```

```
**24: **
```

```
**25: **
```

```
**26: **
```

```
**27: **
```

```
**28: **
```

```
**29: **
```

```
**30: **
```

```
**31: **
```

```
**32: **
```

```
**33: **
```

```
**34: **
```

```
**35: **
```

```
**36: **
```

```
**37: **
```

```
**38: **
```

```
**39: **
```

```
**40: **
```

```
