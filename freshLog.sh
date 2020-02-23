#!/bin/bash
echo 'stopping camera app'
systemctl stop stream-launcher
sleep 1
SERVICE="StreamApp"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"  
fi
echo 'Starting camera app'
cd ~/StreamApp/services
./streamlauncher
