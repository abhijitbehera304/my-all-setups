#!/bin/bash
yum install httpd -y
systemctl start httpd
chkconfig httpd on
yum install git -y
cd /var/www/html
git clone https://github.com/Ironhack-Archive/online-clone-amazon.git
mv online-clone-amazon/* .
tail -f /var/log/httpd/access_log
