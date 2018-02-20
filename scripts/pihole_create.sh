#!/bin/sh

docker run -d \
--name pihole \
-p 53:53/tcp -p 53:53/udp -p 80:80 \
-v "pihole:/etc/pihole/" \
-v "pihole:/etc/dnsmasq.d/" \
-e ServerIP="${IP}" \
-e ServerIPv6="${IPv6}" \
--restart=unless-stopped \
diginc/pi-hole:latest
