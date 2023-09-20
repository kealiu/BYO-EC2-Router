#!/bin/bash -x

ip link add wg0 type wireguard
wg set wg0 private-key /etc/wireguard/wg0.priv
ip -4 address add 169.254.255.11/29 dev wg0
ip link set mtu 8921 up dev wg0
wg set wg0 listen-port 1234 peer PeerPublicKey= allowed-ips 169.254.255.8/29,10.0.0.0/10 endpoint 22.22.22.22:1234

ip link add wg1 type wireguard
wg set wg1 private-key /etc/wireguard/wg1.priv
ip -4 address add 169.254.255.22/29 dev wg1
ip link set mtu 8921 up dev wg1
wg set wg1 listen-port 1235 peer PeerPublicKey= allowed-ips 169.254.255.16/29,10.0.0.0/10 endpoint 33.33.33.33:61234

