#!/bin/sh

docker run --privileged  -d \
--name=qbittorrent-nox_vpn \
--restart=unless-stopped \
-v "$HOME"/container_files/qbittorrent-nox_vpn:/config \
-v /mnt/torrents:/downloads \
-e "VPN_ENABLED=yes" \
-e "LAN_NETWORK=192.168.1.0/24" \
-e "NAME_SERVERS=192.168.1.3,1.1.1.1,8.8.8.8" \
-e "PUID=1000" \
-e "PGID=1000" \
-p 8080:8080 \
-p 8999:8999 \
-p 8999:8999/udp \
markusmcnugen/qbittorrentvpn
