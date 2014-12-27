#!/bin/bash
if command -v pip >/dev/null 2>&1; then
    sudo bash -c "pip install RAVN"
else
    echo >&2 "I require pip but it's not installed.  Aborting.";
    exit 1;
fi
# PIDFile
PIDFILE=$HOME/.RAVNServer/pidfile
# Make directory to store server.py
mkdir -p $HOME/.RAVNServer/
# Create server.py
printf 'from RAVN import Server\nimport time\ntime.sleep(5)\ns = Server()\n' > $HOME/.RAVNServer/server.py
<<<<<<< HEAD
#sudo bash -c "cp ./autostart.sh /etc/init.d/ravnd"
sudo bash -c "wget -O /etc/init.d/ravnd https://raw.githubusercontent.com/raptorbird/RAVN/master/autostart.sh"
sudo bash -c "sed -i 's|PIDFILE|$PIDFILE|g' /etc/init.d/ravnd"
sudo bash -c "chmod +x /etc/init.d/ravnd"
sudo bash -c "chown root:root /etc/init.d/ravnd"
sudo bash -c "update-rc.d ravnd defaults"
sudo bash -c "update-rc.d ravnd enable"
printf 'module load droneapi.module.api\napi start %s/.RAVNServer/server.py' $HOME >> $HOME/mavinit.scr
sudo bash -c "printf 'api start %s/.RAVNServer/server.py' $HOME >> /root/mavinit.scr"
=======
printf 'module load droneapi.module.api\napi start %s/.RAVNServer/server.py' $HOME >> $HOME/mavinit.scr
sudo bash -c "printf 'api start %s/.RAVNServer/server.py' $HOME >> /root/mavinit.scr"
>>>>>>> 0.2.0
