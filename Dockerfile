FROM phusion/baseimage:0.9.19
MAINTAINER Dmitry Tsvettsikh <me@reklatsmasters.com>

RUN apt-get update && \
	apt-get install -y davfs2 ca-certificates fuse && \
	apt-get clean &&	\
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# define mount pount
RUN mkdir -p /mnt/yandex && echo "https://webdav.yandex.ru /mnt/yandex davfs user,rw,noauto 0 0" >> /etc/fstab;

# add startup script to mount yandex webdav
RUN mkdir -p /etc/my_init.d
ADD start.sh /etc/my_init.d/yandex.sh
RUN chmod +x /etc/my_init.d/yandex.sh
