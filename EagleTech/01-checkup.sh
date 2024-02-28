sudo apt update && apt depends nvidia-jetpack | awk '{print $2}' | uniq | xargs -I {} bash -c "sudo apt clean ; sudo apt install -y {}"

echo "Please reboot the GPU"