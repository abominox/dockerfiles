#!/bin/bash
# Build script for "workstation" Dockerfile

# build docker container
#docker build -t workstation:latest -f ~/home/raxemremy/projects/dockerfiles/workstation .
cd ~/home/raxemremy/projects/dockerfiles/workstation
docker build -t workstation:latest .

# delete old container (if applicable)
docker rm workstation

# run new container with settings
docker run --user raxemremy --hostname workstation --name workstation -it workstation
