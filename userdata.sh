#!/bin/bash
apt update -y
apt install nginx -y
systemctl restart nginx
systemctl enable nginx.service
mv /var/www/html/index.nginx-debian.html /var/www/html/index.nginx-debian.html.bk
echo "hello world" > /var/www/html/index.html
