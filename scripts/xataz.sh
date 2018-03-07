#!/bin/sh

docker run -dt \
--name xataz-rutorrent \
-p 9080:8080 \
-p 6881:6881 \
-p 6881:6881/udp \
-p 127.0.0.1:5000:5000 \
-e WEBROOT=/rutorrent  \
-e DHT_RTORRENT=on     \
-e PORT_RTORRENT=6881  \
-e FILEBOT_RENAME_METHOD=move \
-e FILEBOT_RENAME_SERIES="{n}/Season {s}/{n} - {s00e00} - {t}" \
-e UID=1000 \
-e GID=1000 \
-v /mnt/mdrive/torrents:/data   \
-v xataz-rutorrent:/config        \
xataz/rtorrent-rutorrent:filebot
