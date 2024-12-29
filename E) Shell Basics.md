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




