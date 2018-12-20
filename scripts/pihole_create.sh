#!/bin/bash
# Creation script for Docker piHole DNS

docker run -d \
--name pihole \
-p 53:53/tcp \
-p 53:53/udp \
-p 8081:80 \
-e DNS1="1.1.1.1" \
-e DNS2="8.8.8.8" \
-e TZ="America/New_York" \
-v "/home/raxemremy/container_files/pihole:/etc/pihole/" \
-v "/home/raxemremy/container_files/pihole/dnsmasqd:/etc/dnsmasq.d/" \
-e ServerIP="192.168.1.3" \
--restart=unless-stopped \
diginc/pi-hole:latest
