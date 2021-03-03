esp8266-rtos-builder
==========

![][docker-pulls] ![][docker-image-size]

Build environment based on [ESP8266_RTOS_SDK](https://github.com/espressif/ESP8266_RTOS_SDK)

```sh
docker pull xingrz/esp8266-rtos-builder:latest
```

## Usage

```sh
cd /path/to/your/project
docker run --rm -v $PWD:/project xingrz/esp8266-rtos-builder:latest
```

## Supported tags

* [`latest`](https://github.com/espressif/ESP8266_RTOS_SDK/tree/master)
* [`3.4`](https://github.com/espressif/ESP8266_RTOS_SDK/tree/release/v3.4)
* [`3.3`](https://github.com/espressif/ESP8266_RTOS_SDK/tree/release/v3.3)
* [`3.2`](https://github.com/espressif/ESP8266_RTOS_SDK/tree/release/v3.2)

[docker-pulls]: https://shields.io/docker/pulls/xingrz/esp8266-rtos-builder?style=flat-square
[docker-image-size]: https://shields.io/docker/image-size/xingrz/esp8266-rtos-builder/latest?style=flat-square
