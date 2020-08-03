# DNS Container

docker run --rm --name mydnscontainer -h dnscontainer.mirror.net -p 192.168.25.40:53:53/udp -dit dnsimage


docker network create \
  --driver=bridge \
  --subnet=192.168.25.0/24 \
  --gateway=192.168.25.40 \
  --ip-range=192.168.25.40/24 \
  dnsnetwork