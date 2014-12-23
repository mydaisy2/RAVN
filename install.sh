#!/bin/bash
if command -v pip >/dev/null 2>&1; then
    sudo bash -c "pip install -i https://testpypi.python.org/pypi RAVN"
else
    echo >&2 "I require pip but it's not installed.  Aborting.";
    exit 1;
fi
# Make directory to store server.py
mkdir -p $HOME/.RAVNServer/
# Create server.py
printf 'from RAVN import Server\nimport time\ntime.sleep(5)\ns = Server()\n' > $HOME/.RAVNServer/server.py
printf 'api start %s/.RAVNServer/server.py' $HOME >> $HOME/mavinit.scr
sudo bash -c "printf 'api start %s/.RAVNServer/server.py' $HOME >> /root/mavinit.scr"