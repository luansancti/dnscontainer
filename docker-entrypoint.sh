#!bin/bash
# named-checkconf -z /etc/bind/named.conf
# named-checkconf -z /etc/bind/named.conf.local
# named-checkzone mirror.net /etc/bind/foward.mirror.net
# named-checkzone mirror.net /etc/bind/reverse.mirror.net
chown -R bind:bind /etc/bind
chmod -R 755 /etc/bind
service bind9 start ; while :; do sleep 10; done