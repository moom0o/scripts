/usr/sbin/iptunnel add gre1 mode gre local DESTINATION_SERVER_IP remote BUYVM_UNPROTECTED_IP ttl 255
ip addr add 192.168.168.2/30 dev gre1
ip link set gre1 up

ip rule add from 192.168.168.0/30 table BUYVM
ip route add default via 192.168.168.1 table BUYVM
