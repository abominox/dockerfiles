#!/bin/sh

sudo docker run -it --name samba -p 139:139 -p 445:445 \
-v /path/to/directory:/mount \
-d dperson/samba
