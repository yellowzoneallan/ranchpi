echo “sudo hostnamectl set-hostname pi4822”
scp allan-pi-key.pub ~/.ssh/authorized_keys
sudo apt-get update -y
sudo apt-get upgrade -y
sudo ufw disable
sudo systemctl stop apparmor
sudo systemctl disable apparmor
sudo sed -i '/swap/d' /etc/fstab
sudo swapoff -a
echo 'dtoverlay=disable-wifi' | sudo tee -a  /boot/firmware/usercfg.txt
echo 'dtoverlay=disable-bt' | sudo tee -a /boot/firmware/usercfg.txt
sudo cp hosts /etc/hosts
echo “sudo hostnamectl set-hostname pi4822”
sudo cp cmdline.txt /boot/firmware/cmdline.txt
sudo cp 50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml
sudo cat /etc/netplan/50-cloud-init.yaml | grep OCTET
sudo netplan apply
sudo reboot

