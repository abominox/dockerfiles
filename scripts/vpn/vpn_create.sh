#!/bin/sh

docker run -v vpn:/etc/openvpn kylemanna/openvpn ovpn_genconfig -u udp://CJMARQUART.COM
docker run --name vpn --restart=always -v vpn:/etc/openvpn -it kylemanna/openvpn ovpn_initpki
