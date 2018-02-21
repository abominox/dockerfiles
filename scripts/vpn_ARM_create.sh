#!/bin/sh

docker volume create vpn

docker run -v vpn:/etc/openvpn --rm giggio/openvpn-arm ovpn_genconfig -u udp://CJMARQUART.COM

docker run -v vpn:/etc/openvpn --rm -it giggio/openvpn-arm ovpn_initpki nopass

docker run -v --restart=always vpn:/etc/openvpn -d --name openvpn -p 1194:1194/udp --cap-add=NET_ADMIN giggio/openvpn-arm

docker run -v vpn:/etc/openvpn --rm -it giggio/openvpn-arm easyrsa build-client-full CLIENTNAME nopass

docker run -v vpn:/etc/openvpn --rm giggio/openvpn-arm ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn
