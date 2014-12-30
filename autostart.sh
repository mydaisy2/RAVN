#!/bin/bash
### BEGIN INIT INFO
# Provides:          ravnd
# Required-Start:    networking
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Starts RAVN Server
# Description:       Starts the RAVN Server on any USB device, and if sucessfull
#                    exits the script
### END INIT INFO
start() {
    shopt -s nullglob
    a=(/dev/ttyA*)
    b=(/dev/ttyU*)
    shopt -u nullglob # Turn off nullglob to make sure it doesn't interfere with anything later
    array=("${a[@]}" "${b[@]}")
    for x in $array
    do
        > PIDFILE;
        mavproxy.py --master=$x --cmd="module load droneapi.module.api; api start SERVER" &;
        sleep 15;
        if [ -s PIDFILE ]
        then
            return 0;
        else
            killall -9 mavproxy.py
        fi
    done
}
stop() {
        kill -9 $(cat PIDFILE)
}
### main logic ###
case "$1" in
  start)
        start
        ;;
  stop)
        stop
        ;;
  restart|reload|condrestart)
        stop
        start
        ;;
  *)
        echo $"Usage: $0 {start|stop|restart|reload}"
        exit 1
esac
exit 0