#!/bin/sh


ip link add name vxlan10 type vxlan id 10 dstport 4789


ip link add name br0 type bridge
ip link set eth1 master br0

ip link set br0 up
ip link set vxlan10 master br0
ip link set vxlan10 up
