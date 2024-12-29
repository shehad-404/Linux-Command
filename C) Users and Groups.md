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

