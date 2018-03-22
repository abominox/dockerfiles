#!/bin/sh

echo "Please enter a password for the piHole web admin console:"
read password

IP_LOOKUP="$(ip route get 8.8.8.8 | awk '{ print $NF; exit }')"  # May not work for VPN / tun0
IPv6_LOOKUP="$(ip -6 route get 2001:4860:4860::8888 | awk '{ print $10; exit }')"  # May not work for VPN / tun0
IP="${IP:-$IP_LOOKUP}"  # use $IP, if set, otherwise IP_LOOKUP
IPv6="${IPv6:-$IPv6_LOOKUP}"  # use $IPv6, if set, otherwise IP_LOOKUP
DOCKER_CONFIGS="$(pwd)"  # Default of directory you run this from, update to where ever.

docker run -d \
--name pihole \
-p 53:53/tcp \
-p 53:53/udp \
-p 80:80 \
-v "${DOCKER_CONFIGS}/pihole/:/etc/pihole/" \
-v "${DOCKER_CONFIGS}/dnsmasq.d/:/etc/dnsmasq.d/" \
-e ServerIP="${IP}" \
--restart=unless-stopped \
diginc/pi-hole-multiarch:debian_armhf

# exec 'sudo pihole -a -p $password' here on the created Docker container
