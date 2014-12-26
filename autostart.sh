#!/bin/sh
### BEGIN INIT INFO
# Provides:          ravnd
# Required-Start:    
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Starts RAVN Server
# Description:       Starts the RAVN Server on any USB device, and if sucessfull
#                    exits the script
### END INIT INFO
for x in `ls /dev/ttyUSB*`
do
    > PIDFILE;
    mavproxy.py --master=$x;
    sleep 10;
    if [ -s PIDFILE ]
    then
        exit 0;
    fi
done
for x in `ls /dev/ttyA*`
do
    > PIDFILE;
    mavproxy.py --master=$x;
    sleep 10;
    if [ -s PIDFILE ]
    then
        exit 0;
    fi
done