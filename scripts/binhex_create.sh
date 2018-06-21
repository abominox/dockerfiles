#!/bin/bash

docker run -d \
--cap-add=NET_ADMIN \
-p 9080:9080 \
-p 9443:9443 \
-p 8118:8118 \
-p 3000:3000 \
--restart=always \
--name=torrent \
-v /mnt/mdrive/torrents:/data \
-v /mnt/mdrive/misc/docker/binhex/config:/config \
-v /etc/localtime:/etc/localtime:ro \
-e VPN_ENABLED=yes \
-e VPN_PROV=custom \
-e STRICT_PORT_FORWARD=yes \
-e ENABLE_PRIVOXY=yes \
-e ENABLE_FLOOD=no \
-e ENABLE_AUTODL_IRSSI=yes \
-e LAN_NETWORK=192.168.1.0/24 \
-e NAME_SERVERS=1.1.1.1,8.8.8.8 \
-e DEBUG=false \
-e PHP_TZ=EST \
-e UMASK=022 \
-e PUID=1000 \
-e PGID=1000 \
binhex/arch-rtorrentvpn
