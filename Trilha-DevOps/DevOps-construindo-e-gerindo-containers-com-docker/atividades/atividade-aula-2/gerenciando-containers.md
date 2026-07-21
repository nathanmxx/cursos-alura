# Gerenciando containers: nomear, acessar, pausar e mapear portas

```
vboxuser@linux:~$ docker run -d --name debian-container debian sleep 2d
3b1f7a9c8e2d4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a

vboxuser@linux:~$ docker exec -it debian-container bash
root@3b1f7a9c8e2d:/# ls
bin  boot  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@3b1f7a9c8e2d:/# exit
exit

vboxuser@linux:~$ docker pause debian-container
debian-container

vboxuser@linux:~$ docker unpause debian-container
debian-container

vboxuser@linux:~$ docker run -d -p 8080:80 --name nginx-container nginx
8f2e1d3c4b5a6978897a6b5c4d3e2f1a0b9c8d7e6f5a4b3c2d1e0f9a8b7c6d5e

vboxuser@linux:~$ curl http://localhost:8080 -I
HTTP/1.1 200 OK
Server: nginx/1.27.0
Content-Type: text/html

vboxuser@linux:~$ docker run -d -p 8081:80 --name static-site-container dockersamples/static-site
Unable to find image 'dockersamples/static-site:latest' locally
latest: Pulling from dockersamples/static-site
5c939e3a4d2b: Pull complete
Digest: sha256:34e3...
Status: Downloaded newer image for dockersamples/static-site:latest
1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b

vboxuser@linux:~$ curl http://localhost:8081 -I
HTTP/1.1 200 OK
Server: nginx/1.11.5
Content-Type: text/html
```
