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

#Reboot
echo REBOOTING!
sudo reboot
