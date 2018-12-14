sudo mkdir -p /data/bind/etc/bind /data/bind/var/cache/bind

sudo docker rm -f dns-master

#  -p 53:53/udp -p 53:53 \
#  -p 127.0.0.1:953:953 \
sudo docker run --name=dns-master -d \
  --net=host \
  --dns=1.1.1.1 --dns=8.8.4.4 \
  -v /data/bind/etc/bind:/etc/bind \
  -v /data/bind/var/cache/bind:/var/cache/bind \
kabakaev/bind
