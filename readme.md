## docker + yandex.disk + webdav
A minimal Ubuntu connected to [Yandex.Disk](https://disk.yandex.ru/)

## Usage

You can use it as a base for your own Docker images. Note: Yandex.Disk will be connected at *start* time, not *build* time. 

Learn more about [phusion/baseimage](https://github.com/phusion/baseimage-docker).

```dockerfile
FROM [reklatsmasters/yandex-disk-webdav](https://hub.docker.com/r/reklatsmasters/yandex-disk-webdav/)

# your own build rules
```

Run it:
```
docker run -it -e "YANDEX_USERNAME=${USERNAME}" -e "YANDEX_PASSWORD=${PASSWORD}" --privileged  reklatsmasters/yandex-disk-webdav /sbin/my_init -- ls /mnt/yandex
```

## ENV

* **YANDEX_USERNAME** - username (without @yandex.ru)
* **YANDEX_PASSWORD** - password (account or application)

## License

MIT (c) 2016, Dmitry Tsvettsikh