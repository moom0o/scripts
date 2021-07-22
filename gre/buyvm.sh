/usr/sbin/iptunnel add gre1 mode gre local BUYVM_UNPROTECTED_IP remote DESTINATION_SERVER_IP ttl 255
ip addr add 192.168.168.1/30 dev gre1
ip link set gre1 up

/usr/sbin/iptables -t nat -A POSTROUTING -s 192.168.168.0/30 ! -o gre+ -j SNAT --to-source 198.251.82.39 # Protected buyvm ip
ip addr add 198.251.82.39 dev eth0

iptables -t nat -A PREROUTING -d 198.251.82.39 -j DNAT --to-destination 192.168.168.2
iptables -A FORWARD -d 192.168.168.2 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
