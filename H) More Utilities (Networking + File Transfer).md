# H) More Utilities (Networking + File Transfer)
## Networking
### ping = send ICMP ECHO_REQUEST to network hosts
**1: Sends ICMP echo requests to google.com to check connectivity and measure response times.**
```
ping google.com
```
**2: Sends exactly 3 ICMP echo requests to google.com and then stops.**
```
ping -c 3 google.com
```
**3: Displays the network configuration, including IP addresses, netmasks, and hardware addresses.**
```
ifconfig
```
**4: Shows detailed information about all network interfaces and their IP configurations.**
```
ip address
```
**5: Displays detailed statistics (like packet counts) for network links.**
```
ip -s link	
```
**6: Displays help information for the ip command, listing available options and subcommands.**
```
ip help
```
**7: Shows help specific to the ip address command, detailing how to manage IP addresses.**
```
ip address help
```
**8: Displays help for the ip link command, which manages network interfaces.**
```
ip link help
```
**9: Shows the current IP addresses for all network interfaces.**
```
ip address	
```
**10: Disables the network interface enp0s3 (requires superuser privileges).**
```
sudo ip link set dev enp0s3 down
```
**11: Shows the network interfaces again, but enp0s3 should now be down (inactive).**
```
ip address
```
**12: Attempts to ping google.com again, which should fail if the network interface is down.**
```
ping google.com
```
**13: Re-enables the enp0s3 network interface.**
```
sudo ip link set dev enp0s3 up
```
**14: Displays the network interfaces again, and enp0s3 should be up (active).**
```
ip address
```
**15: Tests connectivity by sending ICMP echo requests to google.com after re-enabling the interface.**
```
ping google.com
```
**16: Displays the routing table, which shows how network traffic is routed on the system.**
```
ip route	
```
**17: Adds a static route for the 10.0.3.0/24 network, directing traffic through the gateway at 10.0.2.1.**
```
sudo ip route add 10.0.3.0/24 via 10.0.2.1
```
**18: Displays the updated routing table, showing the new route added.**
```
ip route
```
**19: Deletes the previously added static route to the 10.0.3.0/24 network.**
```
sudo ip route delete 10.0.3.0/24 via 10.0.2.1
```
**20: Shows the routing table after the route has been deleted.**
```
ip route
```
## Finding DNS(Domain Name System)
**21: Queries the DNS to find the IP address of google.com.**
```
nslookup google.com
```
**22: Performs a DNS lookup for google.com, providing more detailed information than nslookup.**
```
dig google.com
```
**23: Performs a reverse DNS lookup on Google's public DNS server IP (8.8.8.8) to find the associated domain name & it'll show the Domain Name**
```
dig -x 8.8.8.8
```
**24: Shows Current Connection(TCP) & Statistics("at")**
```
netstat -at
```
**25: Shows the coonection(TCP) currently Listening("lt")**
```
netstat -lt 
```

## File Transfer Utilities >>>> scp = copies files between hosts on a network
**26: file Transfer Local to Remote Machine(192.168.....) with given ip address**
```
scp file.txt 192.168.100.4:/home/bob
```
**27: r = copy a Directory, to given destination**
```
scp -r files 192.168.100.4:/home/bob
```
**28: send file Remote to Local [Remote file = 192.168......... ; Local dir = backup/]**
```
scp 192.168.100.4:/home/bob/remote-file.txt  backup/
```
**29: shows the list of files in Directory("backup")**
```
ls backup 
```
**30: print the content**
```
cat backup/remote-file.txt
```
**31: Copy a Directory Remote Machine to Local**
```
scp -r 192.168.100.4:/home/bob/remote-file.txt  backup/
```
**32: shows the Long List of "backup" dir**
```
ll backup/	
```
**33: shows the List of Files	in Directory "remote-files"**
```
ll backup/remote-files/
```
**34: send File from Local to Another Remote User("Sally")**
```
scp file.txt sally@192.168.100.4:/home/sally
```
### rsync = a fast, versatile, remote (and local) file-copying tool
**35: Recursively send files using Archive[avzh; a=archive mode,v= ,z=transfer,h=human redable]**
```
rsync -avzh file2.txt 192.168.100.4:/home/bob
```



