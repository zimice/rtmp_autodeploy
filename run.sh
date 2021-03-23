#!/bin/sh
sudo apt-get install -y nginx libnginx-mod-rtmp  /dev/null
sudo rm /etc/nginx/nginx.conf
sudo mv nginx.conf etc/nginx/
sudo nginx -t
sudo systemctl start nginx
sudo systemct enable nginx
