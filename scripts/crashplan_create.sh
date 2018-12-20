#!/bin/sh

docker run -d \
--name=crashplan \
--restart=unless-stopped \
-p 5800:5800 \
-v crashplan:/config:rw \
-v /mnt/mdrive:/storage:ro \
jlesage/crashplan-pro
