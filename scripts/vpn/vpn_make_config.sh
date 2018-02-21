#!/bin/sh

docker run -v vpn:/etc/openvpn --rm -it giggio/openvpn-arm easyrsa build-client-full NEWCERT  nopass

docker run -v vpn:/etc/openvpn --rm giggio/openvpn-arm ovpn_getclient NEWCERT > NEWCERT.ovpn
