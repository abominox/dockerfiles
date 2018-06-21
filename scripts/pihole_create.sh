#!/bin/bash
# Creation script for Docker piHole DNS

docker run -d \
--name pihole \
-p 53:53/tcp -p 53:53/udp -p 80:80 \
-v "/mnt/mdrive/misc/docker/pihole/:/etc/pihole/" \
-v "/mnt/mdrive/misc/docker/pihole/dnsmasq.d/:/etc/dnsmasq.d/" \
-e ServerIP="192.168.1.7" \
--restart=always \
diginc/pi-hole:latest
