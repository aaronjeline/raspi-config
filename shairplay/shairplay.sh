#Install shairplay

#Install Packages
sudo apt-get install git libao-dev libssl-dev libcrypt-openssl-rsa-perl libio-socket-inet6-perl libwww-perl avahi-utils libmodule-build-perl -y

#iOS6/7 compatibility
git clone https://github.com/njh/perl-net-sdp.git perl-net-sdp
cd perl-net-sdp
perl Build.PL
sudo ./Build
sudo ./Build test
sudo ./Build install
cd ..

#Shairplay
git clone https://github.com/hendrikw82/shairport.git
cd shairport

#Configure
make install
sudo cp shairport.init.sample /etc/init.d/shairport
cd /etc/init.d
sudo chmod a+x shairport
sudo update-rc.d shairport defaults

#Add Aliases
echo adding bash shortcuts...
echo "alias hap=\"sudo /etc/init.d/shairport stop\"
alias sap=\"sudo /etc/init.d/shairport start\"
alias rap=\"sudo /etc/init.d/shairport restart\"" >> /home/pi/.bashrc
#Clean up
echo cleaning up...
sudo rm -rf /home/pi/perl-net-sdp
sudo rm -rf /home/pi/shairport

#Display reminder
echo Don\'t forget to modify /etc/init.d/shairport. Check airplayargs.txt
