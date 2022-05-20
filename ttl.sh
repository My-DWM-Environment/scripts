#!/bin/bash

# Change TTL with ping

echo 64 > /proc/sys/net/ipv4/ip_default_ttl
ping -c 3 yanex.ru
echo 65 > /proc/sys/net/ipv4/ip_default_ttl
cat /proc/sys/net/ipv4/ip_default_ttl
