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
