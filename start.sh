sudo mkdir -p /data/bind/etc/bind /data/bind/var/cache/bind

sudo docker rm -f dns-master

sudo docker run --name=dns-master -d \
  --dns=1.1.1.1 --dns=8.8.4.4 \
  -p 53:53/udp -p 53:53 \
  -p 127.0.0.1:953:953 \
  -v /data/bind/etc/bind:/etc/bind \
  -v /data/bind/var/cache/bind:/var/cache/bind \
kabakaev/bind
