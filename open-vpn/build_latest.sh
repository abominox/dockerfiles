#!/bin/bash
# Build script for "open-vpn" Dockerfile

# delete old container (if applicable)
docker rm vpn

# remove all untagged images
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

# delete old image (if applicable)
# uncomment this to rebuild new image every single time
#docker rmi workstation

# build docker container
#docker build -t workstation:latest -f ~/home/raxemremy/projects/dockerfiles/workstation .
cd /home/raxemremy/projects/docker/dockerfiles/open-vpn
docker build -t openvpn:latest .

# run new container with settings
docker run -it --privileged --cap-add=NET_ADMIN --device=/dev/net/tun --name vpn openvpn:latest
#docker run --net=host --name vpn -it vpn bash
