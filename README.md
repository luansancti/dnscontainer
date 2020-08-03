# DNS Container

docker run --rm --name mydnscontainer -h dnscontainer.mirror.net -p 192.168.25.40:53:53/udp --net dnsnetwork --ip 192.168.25.40 --dns 192.168.25.40 --dns-search mirror.net -dit dnsimage


docker network create \
  --driver=bridge \
  --subnet=192.168.25.0/24 \
  --gateway=192.168.25.40 \
  --ip-range=192.168.25.40/24 \
  dnsnetwork