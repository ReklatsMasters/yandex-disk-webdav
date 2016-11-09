#!/usr/bin/env sh

# YANDEX DISK
if [ ! -z ${YANDEX_USERNAME+x} ]; then
	echo 'enable yandex disk...'
	echo "/mnt/yandex $YANDEX_USERNAME $YANDEX_PASSWORD" >> /etc/davfs2/secrets;
	mount /mnt/yandex;
fi