# J) Process Management 
## Process Information
### ps = report a snapshot of the current processes 
### ps accepts several options (UNIX options, BSD options, GNU long options)
**1: Display all Process of BSD Syntax**
```
ps ax | less -S
```
**2: Display all Process using UNIX Format**
```
ps -e | less -S
```
**3: Most Common option for in BSD**
```
ps aux | less -S
```
**4: Most Common option for in UNIX**
```
ps -ef | less -S
```
**5: Shows every Process Running as "root"**
```
ps -U root -u root u | less -S
```
**6: View of Processes in Hierarchically**
```
ps -eH | less -S
```
**7: Display Processes in Hierarchy(Don't show PID, PPID,...... such as information)**
```
pstree | less -S
```
**8: Shows Most Consuming Processes**
```
top
```

## Foreground & Background Process
**9: follows the Movement of Mouse for Foreground Process (Can't execute the Command Unitil it removed)**
```
xeyes
```
**10: Can Execute the Command in Background**
```
xeyes &
```
**11: Stop the Process**
```
ctrl + G 
```
**12: Run Background Process again**
```
bg 
```
**13: Shows process wheather Runs or Not**
```
jobs 
```
**14: Starts the Foreground Process**
```
fg
```
**15: Runs a Clock for Process**
```
xclock &
```
**16: Foreground can Runs Specific Process**
```
fg 3
```

## Managing Process
### kill = send a signal to a process
**17: List of all Signals**
```
kill -l
```
### Some Important Signals:
**Signal Number, Name  : 	Task**
* (1)     SIGHUP	  =	Kill a Process;		
* (19)    SIGSTOP	  = 	Stop the Process;	
* (15)    SIGTERM	  = 	Default signal, if Process doesn't used then it ShutDown Automatically;
* (9)     SIGKILL 	  = 	If Process Dosn't Respond then SIGKILL used to ShutDoen itself.

**18: It'll show PID(Process id like 55092)**
```
xeyes &
```
**19: Shows Process Id(PID)**
```
ps -ef | grep xeyes	
```
**20: It'll Kill the Process (55902 process)	[It's a Default command for Killing the Process]**
```
kill 55902	
```
**21: It'll show Process again**
```
xeyes &
```
**22: Re-run the Process (let a process id is = 55095)**
```
ps -ef | grep xeyes	
```
**23: Kill the process(PID= 55095) using Signal Num 9) SIGKILL**
```
kill -9 55095
```
**24: All Process will be dead if used "pkill"**
```
pkill xeyes
```
**25: It'll Sleep the Process for 5 Seconds**
```
sleep 5
```

## Scheduling Processes with Crontab and Init.d
### Processes can Executed by Scheduled with Specific Time by Using "crontab" 
### 2 Types of "crontab" in Linux 
### 1st is System-wide crontab file located in /etc Directory 
**26: shows "crontab" file in /etc Directory**
```
less /etc/crontab
```
#### "anacorn" is a Acroministic version of "corn" >>> daily, weekly & monthly
**27: shows the list of daily cron file**
```
ll /etc/cron.daily
```
**28: it'll open crontan in a Editor(nano, vim or ......)**
```
crontab -e
```
**29: Giving the Schedule(*/5 * ....) then save the file (using ctrl+O) and exit (ctrl+X)**
```
*/5 * * * * touch /home/shehad/cron/crontab-ran.txt
```
**30: shows the list of "crontab"**
```
crontab -l
```
**31: it'll try to open the File**
```
ls -l /home/shehad/cron/crontab-ran.txt
```
**32: it'll try to open the Directory**
```
ls -l /home/shehad/cron/	
```
**33: Run again the Command(31) then the File can be exist now**
```
ls -l /home/shehad/cron/crontab-ran.txt 
```
**34: Remove the "crontab"**
```
crontab -r
```
**35: there is no List of Crontab**
```
crontab -l 
```

## System Boots [Graphical or GUI related] 
**36: it'll Open System Boots**
```
cd /etc/init.d
```
**37: show the list**
```
ls	
```
**38: Back to Current Directory("/etc")**
```
cd ..
```
**39: it'll show the List of Directory**
```
ls -d /etc/rc*.d
```
**40:  Enter into Run Level "rc5.d"**
```
cd rc5.d
```
**41:  shows the list Run Level of "rc5.d"**
```
ls -l
```
