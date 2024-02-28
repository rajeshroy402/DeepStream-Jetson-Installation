#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

############################################################

# Installing DeepStream-6.0
echo "Installing DeepStream-6.0:"
source ~/.bashrc
gdown https://drive.google.com/uc?id=1CfuV4pnEO1zx185gGCYR7G4RkTXErlNW
sudo apt-get install ./deepstream-6.0_6.0.0-1_arm64.deb

echo "Installation completed!!!"
#sudo apt update -y
deepstream-app --version

echo "Installation successful. Thank you"