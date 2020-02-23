#!/bin/bash
ssh root@$2 <<'ENDSSH'
systemctl stop stream-launcher.service
systemctl stop stream-launcher.service
exit
ENDSSH
scp -r $1/* root@$2:~/StreamApp

#cd StreamApp
#unzip 

