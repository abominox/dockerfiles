docker run -d --user $UID:$GID \
-p 8080:8080 -p 6881:6881/tcp -p 6881:6881/udp \
-v torrent:/config \
-v /mnt/mdrive/torrents:/torrents \
-v /mnt/mdrive/torrents:/downloads \
--restart=always \
--name qbittorrent \
wernight/qbittorrent
