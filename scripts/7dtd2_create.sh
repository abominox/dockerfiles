#!/bin/sh

docker run -d \
--name 7dtd_2 \
-p 26901:26900 \
--restart=unless-stopped \
-v /home/raxemremy/container_files/7dtd_2:/steamcmd/7dtd \
didstopia/7dtd-server
