# lagden/httpd

[![Docker Release][dockerelease-img]][dockerelease]

[dockerelease-img]:    https://img.shields.io/docker/v/lagden/httpd/golang-1.20.4
[dockerelease]:        https://hub.docker.com/r/lagden/httpd


This is a tiny HTTP Server written in Golang for static files.


## Usage

```
docker run  -v ./dist:/home/static/dist -p 8080:8080 -it lagden/httpd /server -d /home/static/dist -p 8080
```


## License

MIT © [Thiago Lagden](https://github.com/lagden)
