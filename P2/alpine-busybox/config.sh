#!/bin/sh

if [ "$HOSTNAME" = "fcatinau-1" ]; then
	ip addr add 30.1.1.1/24 dev eth0

else
	ip addr add 30.1.1.2/24 dev eth0

fi
