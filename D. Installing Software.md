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


