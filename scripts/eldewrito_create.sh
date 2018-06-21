#!/bin/bash

# Create the eldewrito/"Halo Online" dedicated server Docker container.

docker run -d \
-p 11774:11774/udp \
-p 11775:11775/tcp \
-p 11776:11776/tcp \
-p 11777:11777/tcp \
-v /home/raxemremy/misc/halo_online:/game \
-v /mnt/mdrive/misc/docker/eldewrito:/config \
-v /mnt/mdrive/misc/docker/eldewrito:/logs \
--cap-add=SYS_PTRACE \
domistyle/eldewrito
