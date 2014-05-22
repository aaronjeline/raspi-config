Shairplay Script

Will install/configure the shairplay daemon to your raspi system.
Also adds 3 shortcuts to your .bashrc:
sap: Start AirPlay Daemon
hap: Halt AirPlay Daemon
rap: Restart AirPlay Daemon


After running the script edit /etc/init.d/shairport and make DAEMON_ARGS="-w $PIDFILE -a AirPi"

Where AirPi replace with whatever you want your airplay station to be called
