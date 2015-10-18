# rpidockers/kibana
Image was tested on my ODROID-U3. It should also work on Raspberry Pi, but if not, you'll have to build it yourself.

```
$ git clone https://github.com/rpidockers/kibana.git
$ docker build -t rpidockers/kibana kibana
```

## Tags
[4.1.2](https://github.com/rpidockers/kibana/blob/4.1.2/Dockerfile)

[latest](https://github.com/rpidockers/kibana/blob/master/Dockerfile)

## How to use this image
```
$ docker run -d -p 5601:5601 -e ELASTICSEARCH=<ip>:<http_port> rpidockers/kibana
```
