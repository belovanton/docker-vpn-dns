FROM ubuntu
MAINTAINER Anton Belov anton4@bk.ru

RUN apt-get update -y && DEBIAN_FRONTEND=noninteractive \
	apt-get -y -f install \
	iproute2 php-curl nano php-cli &&\
        apt-get clean && \
        rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* /download/directory

WORKDIR /

ADD ./start.sh /start.sh
ADD ./pdd_yandex_control/pdd_create.php /pdd_create.php
ADD ./pdd_yandex_control/pdd_delete.php /pdd_delete.php
ADD ./pdd_create /usr/local/bin/pdd_create
ADD ./pdd_delete /usr/local/bin/pdd_delete
ADD ./vpn_update /usr/local/bin/vpn_update
CMD ["/start.sh"]
