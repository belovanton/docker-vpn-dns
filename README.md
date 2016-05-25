# docker-vpn-dns
This container update tun0 from host ip in yandex pdd
example of using:


 docker run --net=host -e TOKEN=YOUR_TOKEN  -e DOMAIN=YOUR_DOMAIN  -it vpn-dns vpn_update

