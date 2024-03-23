#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

echo "This repo is owned and managed by Rajesh Roy <rajeshroy402@gmail.com>"

############################################################

sudo apt update && apt depends nvidia-jetpack | awk '{print $2}' | uniq | xargs -I {} bash -c "sudo apt clean ; sudo apt install -y {}"
