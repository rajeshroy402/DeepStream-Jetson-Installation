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
sudo apt update -y
#sudo apt upgrade -y


echo "########################"

sudo jetson_clocks

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

echo "Installing gdown"
sudo apt install python3-pip
pip3 install gdown

##Installing Kafka
#
#echo "Cloning kafka from github"
#git clone https://github.com/edenhill/librdkafka.git
#git reset --hard 7101c2310341ab3f4675fc565f64f0967e135a6a
#./configure
#make
#sudo make install

#Creating a deepstream directory

sudo apt update && sudo apt upgrade

echo "Creating directory for DeepStream-6.0:"
sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.0/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.0/lib

echo "Install latest NVIDIA BSP packages:"
cd ~/ && gdown https://drive.google.com/uc?id=1I3Rnw_WTB5K5WIusSrNpu9ZPzNHo7oQg
sudo cp ~/libgstvideo-1.0.so.0.1405.0 /usr/lib/aarch64-linux-gnu/libgstvideo-1.0.so.0.1405.0
#sudo echo "deb https://repo.download.nvidia.com/jetson/common r32.6 main" >> /etc/apt/sources.list.d/nvidia-l4t-apt-source.list
#sudo echo "deb https://repo.download.nvidia.com/jetson/t194 r32.6 main" >> /etc/apt/sources.list.d/nvidia-l4t-apt-source.list

#echo "Update the system:"
#sudo apt update -y
#sudo apt install --reinstall nvidia-l4t-gstreamer -y
#sudo apt install --reinstall nvidia-l4t-multimedia -y
#sudo apt install --reinstall nvidia-l4t-core -y

# Installing DeepStream-6.0
echo "Installing DeepStream-6.0:"
source ~/.bashrc
gdown https://drive.google.com/uc?id=1CfuV4pnEO1zx185gGCYR7G4RkTXErlNW
sudo apt-get install ./deepstream-6.0_6.0.0-1_arm64.deb

echo "Installation completed!!!"
sudo apt update -y
deepstream-app --version
