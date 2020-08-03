FROM debian:latest
RUN apt update && apt install bind9 bind9utils bind9-doc dnsutils -y
RUN rm -rf /etc/bind
COPY ["./bind", "/etc/bind"]
#RUN echo -e "nameserver 192.168.25.6\nsearch mirror.net" > /etc/resolv.conf
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9
RUN named-checkconf -z /etc/bind/named.conf
RUN named-checkconf -z /etc/bind/named.conf.local
RUN named-checkzone mirror.net /etc/bind/foward.mirror.net
RUN named-checkzone mirror.net /etc/bind/reverse.mirror.net
RUN chown -R bind:bind /etc/bind
RUN chmod -R 755 /etc/bind
CMD ["bash","service bind9 start"]
