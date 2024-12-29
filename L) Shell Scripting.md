# L) Shell Scripting 
## Bash Scripting Basics:
### Scripting in WSL, VMware or VirtualBox 
### Has 3 Steps 
### 1st) Create a File(*.sh) 
### 2nd) Edit File in Editor(Notepad, vim, nano or others)
### 3rd) Run the Script using "bash" Command

## Script in "Notepad"
**1: "touch" Command Create a file with ".sh" Extemtion**
```
touch file_name.sh
```
**Edit File >>> open the file in Notepad and Write the Script or use other Editors(vim, nano,...)**
**Run the Script**
**2: it'll run the Script and display the Result**
```
bash file_name.sh	
```

## Another Way: Script in "vim" Editor
**3: Create a file and Open in "vim" Editor [Use "nano" for nano Editor]**
```
gvim file_name.sh &
```
**4: Run the Script**
```
bash file_name.sh
```
**5: Shows the file information**
```
ls -l file_name.sh
```
**6: Change file Permission(chmod) for Executable("+x")**
```
chmod +x file-name.sh
```
**7: Executes the Code and Display the Output**
```
./file_name.sh
```


## Another Way: Script in "nano" Editor
**8: Create a file and Open in "Nano" Editor**
```
nano file_name.sh
```
**9: Change file Permission(chmod) for Executable("+x")**
```
chmod +x file-name.sh
```
**10: Executes the Code and Display the Output**
```
./file_name.sh
```

## Another Way: Script in "Emacs" Editor
**11:  Creating file for using the "Emacs" text editor**
```
emacs -nw hello.sh
```
**12: Change file Permission(chmod) for Executable("+x")**
```
chmod +x file-name.sh
```
**13: Executes the Code and Display the Output**
```
./file_name.sh
```

## Bash Scripting Control Structure >>>> Write the Code in Correct Format( it Gives an Issue, so I can't did that) 
### if-else code [here](https://github.com/shehad-404/Linux-Command/blob/main/Scripts/if-examples.sh)
**14:  Create the file and Edit the File**
```
touch if-examples.sh
```
**15:  Run the file**
```
bash if-examples.sh	
```
### Comparison-Examples code [here](https://github.com/shehad-404/Linux-Command/blob/main/Scripts/comparison-examples.sh)
**16: Create the file and edit**
```
touch comparison-examples.sh
```
**17:  Run the File**
```
bash comparison-examples.sh
```

### Case-Examples code [here](https://github.com/shehad-404/Linux-Command/blob/main/Scripts/case-examples.sh)
**18: Create the file**
```
touch case-examples.sh
```
**19: Run the File**
```
bash case-examples.sh
```

### Loop code [here](https://github.com/shehad-404/Linux-Command/blob/main/Scripts/loop.sh)
**20:  Create the file**
```
touch loop-examples.sh
```
**21: Run the File**
```
bash loop-examples.sh
```
