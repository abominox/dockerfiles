#cd /dev
#mkdir net
#mknod net/tun c 10 200
#chmod 0666 net/tun
#/dev/net/tun
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 600 /dev/net/tun
