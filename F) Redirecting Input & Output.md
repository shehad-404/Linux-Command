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


