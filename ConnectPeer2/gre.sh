#!/bin/bash

/usr/sbin/ip tunnel add gre1 mode gre local 10.0.20.228 remote 100.64.100.2 ttl 255
/usr/sbin/ip addr add 169.254.20.1/29 dev gre1
/usr/sbin/ip link set gre1 up
