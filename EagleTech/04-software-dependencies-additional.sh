#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

echo "This repo is owned and managed by Rajesh Roy <rajeshroy402@gmail.com>"

############################################################

sudo apt update -y
sudo apt install python3-pip -y
sudo apt-get install python3-dev default-libmysqlclient-dev build-essential -y
sudo pip3 uninstall mysql-connector && pip3 install mysql-connector
sudo apt-get install mysql-server -y
sudo pip3 install mysql-connector 
sudo pip3 install mysql-connector-python
sudo pip3 install mysqlclient
sudo pip3 uninstall boto3 && pip3 uninstall boto3
sudo pip3 install boto3
sudo pip3 uninstall psutil && pip3 uninstall psutil
sudo pip3 install psutil
sudo pip3 install boto3 botocore awscli --ignore-installed
