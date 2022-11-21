#!/bin/bash

echo "update app list"

apt-get update
apt-get upgrade -y

echo "install apache webserver and unzip"
apt-get install apache2 unzip -y
cd /tmp
wget https://github.com/vsblemos/todo-list/archive/refs/heads/main.zip
unzip main.zip
cd todo-list
cp -R * /var/www/html/

