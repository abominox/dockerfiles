#!/bin/sh

docker run -d \
--name 7dtd \
-p 26900:26900 \
--restart=unless-stopped \
-v /home/raxemremy/container_files/7dtd:/steamcmd/7dtd \
didstopia/7dtd-server
