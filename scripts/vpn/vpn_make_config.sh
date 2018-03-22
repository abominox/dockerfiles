#!/bin/sh

echo "Please enter a name for the OpenVPN certificate/config:"
read name

docker run -v vpn:/etc/openvpn --rm -it giggio/openvpn-arm easyrsa build-client-full $name  nopass

docker run -v vpn:/etc/openvpn --rm giggio/openvpn-arm ovpn_getclient $name > $name + '.ovpn'
