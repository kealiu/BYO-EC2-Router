#!/bin/bash

/usr/sbin/ip tunnel add gre1 mode gre local 10.0.7.226 remote 100.64.100.1 ttl 255
/usr/sbin/ip addr add 169.254.10.1/29 dev gre1
/usr/sbin/ip link set gre1 up
