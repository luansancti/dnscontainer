# DNS Container

docker run --name mydnscontainer -h dnscontainer.mirror.net -p 192.168.25.40:53:53 --net dnsnetwork --ip 192.168.25.40 -dit dnsimage


docker network create \
  --driver=bridge \
  --subnet=192.168.25.0/24 \
  --gateway=192.168.25.1 \
  --ip-range=192.168.25.0/24 \
  dnsnetwork