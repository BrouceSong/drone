#!/bin/bash
type=${1:-"start"}
if [ $type == "start" ]
then
    `sudo gpasswd -a ${USER} docker`
    #`sudo su ${USER}`
    `docker-compose up -d`
else
    echo "input handle:satrt!"
fi
