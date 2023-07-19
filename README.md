# lagden/httpd

[![Docker Release][dockerelease-img]][dockerelease]

[dockerelease-img]:    https://img.shields.io/docker/v/lagden/httpd/latest
[dockerelease]:        https://hub.docker.com/r/lagden/httpd


A cross-platform, high-performance & asynchronous web server for static files serving.  
https://static-web-server.net/


## Usage

```
docker run  -v ./dist:/home/static/dist -p 8080:8080 -it lagden/httpd:latest /sws -d /home/static/dist -p 8080 -g info -q 10 -e false -c "*"
```


## License

MIT © [Thiago Lagden](https://github.com/lagden)
