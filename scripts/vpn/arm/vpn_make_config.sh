#!/bin/sh

echo "Please enter a name for the OpenVPN certificate/config:"
read name

docker run -v vpn:/etc/openvpn --rm -it giggio/openvpn easyrsa build-client-full $name  nopass

docker run -v vpn:/etc/openvpn --rm giggio/openvpn ovpn_getclient $name > $name + '.ovpn'
