# DNS Container

docker run -h dnscontainer.mirror.net -p 53:53 --add-host dnscontainer.mirror.net:192.168.25.6 dnscontainer -dit dnsimage --name mydnscontainer