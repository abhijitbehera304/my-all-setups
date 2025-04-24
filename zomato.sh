#!/bin/bash
yum install httpd -y
systemctl start httpd
chkconfig httpd on
yum install git -y
cd /var/www/html
git clone https://github.com/jain-rithik/Zomato-Clone.git
mv Zomato-Clone/* .
tail -f /var/log/httpd/access_log
