docker build -t proxy-via-iptables .
docker run -i -t --network mynet --privileged -e PROXY_SERVER=proxy -e PROXY_PORT=3128 proxy-via-iptables

