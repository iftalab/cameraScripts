#!/bin/bash
echo 'stopping camera app'

systemctl stop stream-launcher.service
systemctl stop stream-launcher.service
sleep 1
sleep 1
SERVICE="StreamApp"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"  
fi

echo 'Removing cache'
rm StreamApp/bin/cache_v1.db
rm StreamApp/services/cache_v1.db

echo 'done'
