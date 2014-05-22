# Raspberry Pi Config Script

sudo raspi-config
echo updating/installing packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install vim zip tmux -y
echo done
cp pibash ~/.bashrc
echo configured bash
sudo cp sshd_config /etc/ssh/sshd_config
echo configured ssh
echo cleaning up...
sudo rm  /home/pi/ocr_pi.png
sudo rm -rf /home/pi/python_games/
sudo reboot
