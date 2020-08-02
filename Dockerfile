FROM debian:latest
RUN apt update && apt install bind9 bind9utils dnsutils -y
RUN rm -rf /etc/bind
COPY ["./bind", "/etc/bind"]
#RUN echo -e "nameserver 192.168.25.6\nsearch mirror.net" > /etc/resolv.conf
RUN named-checkconf -z /etc/bind/named.conf
RUN named-checkconf -z /etc/bind/named.conf.local
RUN named-checkzone mirror.net /etc/bind/foward.mirror.net
RUN named-checkzone mirror.net /etc/bind/reverse.mirror.net
RUN service bind9 start
RUN chown -R bind:bind /etc/bind
RUN chmod -R 755 /etc/bind
RUN service bind9 stop
RUN service bind9 start

