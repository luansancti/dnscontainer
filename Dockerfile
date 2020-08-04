FROM debian:latest
RUN apt update && apt install bind9 bind9utils bind9-doc dnsutils -y
RUN rm -rf /etc/bind
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9
EXPOSE 53/udp
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/bin/bash", "/docker-entrypoint.sh" ]
