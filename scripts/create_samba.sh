#!/bin/sh

echo "Please enter the absolute path of the directory to share:"
read share


sudo docker run -it \
--name samba \
-p 139:139 \
-p 445:445 \
-v $share:/mount \
--restart=always \
-d dperson/samba
