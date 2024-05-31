#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo apt install npm -y
sudo apt update
sudo apt upgrade -y
sudo npm install -g create-react-app
sudo create-react-app ubralo-saiti
sudo chmod 755 ubralo-saiti
sudo chmod 755 /etc/nginx
cd ubralo-saiti
sudo bash -c 'cat << EOF > /etc/nginx/sites-available/default
server {
	listen 80 ;
	listen [::]:80 ;
	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;
	server_name _;
	location / {
			proxy_pass http://localhost:3000;
	}
}
EOF'
sudo systemctl restart nginx
sudo apt update 
sudo npm start
