#!/bin/sh

docker run -d \
--name 7dtd_3 \
-p 26900:26900 \
--restart=unless-stopped \
-v /home/raxemremy/container_files/7dtd_3:/steamcmd/7dtd \
didstopia/7dtd-server
