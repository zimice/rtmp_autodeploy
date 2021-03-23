#!/bin/sh
apt-get install -y nginx libnginx-mod-rtmp
rm /etc/nginx/nginx.conf
mv nginx.conf /etc/nginx/
nginx -t
systemctl restart nginx
systemctl enable nginx
# include /etc/nginx/modules-enabled/*.conf
