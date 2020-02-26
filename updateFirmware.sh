#!/bin/bash
if [ -z $1 ]
then
        echo 'please give download url as parameter'
else
        echo 'stopping camera app'
        sh stop.sh
        sh stop.sh
        echo 'removing old firmwire downloaded package'
        rm AnyConnect_Smarter_Camera_Platform.tar
        echo 'removing existing camera app'
        rm -rf /root/StreamApp
        sync
        ls -la /root/StreamApp/
        echo 'making stream app directory'
        mkdir StreamApp
        ls -la /root/StreamApp/
        wget $1 --no-check-certificate
        echo 'download completed'
        echo 'getting checksum'
        md5sum AnyConnect_Smarter_Camera_Platform.tar
        echo 'extracting downloaded package'
        tar -xf AnyConnect_Smarter_Camera_Platform.tar -C /root/StreamApp/
        echo 'extraction finished'
        echo 'finding checksum of internal package'
        md5sum /root/StreamApp/bin/*
        md5sum /root/StreamApp/lib/*
fi
