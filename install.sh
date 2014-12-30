#!/bin/bash
echo "checking for pip"
if command -v pip >/dev/null 2>&1; then
	echo "pip is installed, proceeding"
    sudo bash -c "pip install RAVN"
else
    echo >&2 "pip is not installed, run this script after you have installed pip.";
    exit 1;
fi
# PIDFile
PIDFILE=$HOME/.RAVNServer/pidfile
SERVER=$HOME/.RAVNServer/server.py
# Make directory to store server.py
mkdir -p $HOME/.RAVNServer/
# Create server.py
echo "Setting up autostart for RAVN Server"
echo "Downloading autostart.py"
sudo bash -c "wget -O $HOME/.RAVNServer/server.py https://raw.githubusercontent.com/raptorbird/RAVN/master/startup.py"
echo "Downloading autostart.sh"
sudo bash -c "wget -O /etc/init.d/ravnd https://raw.githubusercontent.com/raptorbird/RAVN/master/autostart.sh"
echo "Setting Up autostart.sh"
touch $PIDFILE
sudo bash -c "sed -i 's|PIDFILE|$PIDFILE|g' /etc/init.d/ravnd"
sudo bash -c "sed -i 's|SERVER|$SERVER|g' /etc/init.d/ravnd"
sudo bash -c "chmod +x /etc/init.d/ravnd"
sudo bash -c "chown root:root /etc/init.d/ravnd"
sudo bash -c "update-rc.d ravnd defaults"
sudo bash -c "update-rc.d ravnd enable"