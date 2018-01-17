#!/bin/bash
# Build script for "workstation" Dockerfile

# delete old container (if applicable)
docker rm workstation

# delete old image (if applicable)
#docker rmi workstation

# build docker container
#docker build -t workstation:latest -f ~/home/raxemremy/projects/dockerfiles/workstation .
cd /home/raxemremy/projects/dockerfiles/workstation
docker build -t workstation:latest .

# run new container with settings
docker run --user raxemremy --hostname workstation --name workstation -it workstation
