#!/bin/sh

if [ "$HOSTNAME" = "host_fcatinau-1" ]; then
	ip addr add 20.1.1.1/24 dev eth0

elif [ "$HOSTNAME" = "host_fcatinau-2" ]; then
	ip addr add 20.1.1.2/24 dev eth0

else
	ip addr add 20.1.1.3/24 dev eth0
fi
