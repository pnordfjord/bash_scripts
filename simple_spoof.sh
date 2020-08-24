#! /bin/bash

ifconfig

ifconfig eth0 down
ifconfig etho0 192.168.1.1 netmask 255.255.0.0 broadcast 192.168.1.255
ifconfig eth0 hw ether 00:11:22:33:44:55
ifconfig eth0 up

ifconfig

dhclient eth0

ifconfig | grep inet

echo "nameserver 8.8.8.8" >/etc/resolf.conf

sed -i "3i 192.168.181.131 bankofamerica.com" /etc/hosts
