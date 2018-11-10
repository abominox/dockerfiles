#!/bin/sh

docker run -d \
--name=jdownloader-2 \
--restart=unless-stopped \
-p 5900:5800 \
-v /home/raxemremy/container_files/jdownloader2:/config:rw \
-v /mnt/mdrive/videos/youget:/output:rw \
jlesage/jdownloader-2
