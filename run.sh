#!/bin/bash

docker build -t api:v1 .
if [ $? -ne 0 ]
then
    echo 'build is error'
    exit 1
fi
docker stop go-api
docker rm go-api
docker run -d --rm --name go-api -p 8001:8001 api:v1
if [ $? -ne 0 ]
then
    echo 'build is error'
    exit 1
fi
exit 0
