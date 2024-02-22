#!/bin/sh


docker rm $(docker ps -a)
docker rmi $(docker images)

docker build -t host_fcatinau alpine-busybox/. 
docker build -t routeur_viporten frrouting/.
