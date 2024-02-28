#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

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
sudo pip3 install gdown
sudo pip3 install boto3 botocore awscli --ignore-installed
sudo apt install nano -y


echo "########################"

echo "This script is created and maintained by Rajesh Roy (rajeshroy402@gmail.com)"
echo "Changing directory to home"
cd ~
echo "Installing dependencies:"
sudo apt install \
libssl1.0.0 \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-libav \
libgstrtspserver-1.0-0 \
libjansson4=2.11-1 -y

echo "Installing python3"
sudo apt install python3-pip -y
echo "Installing gdown"
pip3 install gdown

#Creating a deepstream directory

sudo apt update && sudo apt upgrade

echo "Creating directory for DeepStream-6.0:"
sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.0/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.0/lib

echo "Please reboot the GPU"
