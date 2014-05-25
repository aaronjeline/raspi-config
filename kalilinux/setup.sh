# Kali Linux Setup Script

passwd

#Remove default host keys
echo Securing SSH Keys
rm /etc/ssh/ssh_host_*

dpkg-reconfigure openssh-server


echo configuring packages

apt-get update && apt-get upgrade -y

apt-get install sslstrip dsniff fierce vim htop tmux -y

echo configuring ssh

echo bashconfig >> ~/.bashrc 

echo expanding partition

/scripts/rpi-wiggle.sh/
