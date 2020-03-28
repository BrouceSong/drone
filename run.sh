#!/bin/bash

sudo docker build -t api:v1 .
if [ $? -ne 0 ]
then
    echo 'build is error'
    exit 1
fi
sudo docker stop go-api
sudo docker rm go-api
sudo docker run -d --rm --name go-api -p 8001:8001 api:v1
if [ $? -ne 0 ]
then
    echo 'build is error'
    exit 1
fi
exit 0
