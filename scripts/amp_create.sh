#!/bin/bash

echo "Please enter a username for the AMP web-ui:"
read -s amp_username

echo "Please enter a password for the AMP web-ui:"
read -s amp_pass

echo "Please enter your AMP license key:"
read -s license_key

docker run -itd \
--name AMP \
--restart=unless-stopped \
-e license=$license_key \
-e username=$amp_username \
-e password=$amp_pass \
-v /home/raxemremy/misc/amp_server:/home/AMP/server_data \
-p 25565:25565 \
-p 8080:8080 \
raxemremy/amp-mc
