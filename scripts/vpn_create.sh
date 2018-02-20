#!/bin/sh

docker run -v vpn:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://CJMARQUART.COM
docker run -v vpn:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
