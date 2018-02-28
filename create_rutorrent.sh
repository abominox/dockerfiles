#!/bin/sh

docker run -d \
--cap-add=NET_ADMIN \
-p 9080:9080 \
-p 9443:9443 \
-p 8118:8118 \
-p 3000:3000 \
--name=rutorrent \
--restart=always \
-v /mnt/mdrive/torrents:/data \
-v rutorrent:/config \
-v /etc/localtime:/etc/localtime:ro \
-e VPN_ENABLED=no \
-e STRICT_PORT_FORWARD=yes \
-e ENABLE_PRIVOXY=no \
-e ENABLE_FLOOD=yes \
-e ENABLE_AUTODL_IRSSI=yes \
-e LAN_NETWORK=192.168.1.0/24 \
-e NAME_SERVERS=cjmarquart.com \
-e DEBUG=false \
-e PHP_TZ=EST \
-e UMASK=644 \
-e PUID=1000 \
-e PGID=1000 \
binhex/arch-rtorrentvpn
