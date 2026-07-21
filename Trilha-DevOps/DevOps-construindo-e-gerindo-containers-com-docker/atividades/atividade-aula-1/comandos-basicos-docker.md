# Comandos básicos do Docker

```
vboxuser@linux:~$ docker run debian
Unable to find image 'debian:latest' locally
latest: Pulling from library/debian
c29d67bcc351: Pull complete
Digest: sha256:eb0e...
Status: Downloaded newer image for debian:latest

vboxuser@linux:~$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

vboxuser@linux:~$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS                      PORTS     NAMES
7f3a9c1b2e4d   debian    "bash"    30 seconds ago   Exited (0) 28 seconds ago             practical_hopper

vboxuser@linux:~$ docker pull mariadb
Using default tag: latest
latest: Pulling from library/mariadb
a2318d6c47ec: Pull complete
f8f1e9d3b527: Pull complete
Digest: sha256:9c4e...
Status: Downloaded newer image for mariadb:latest

vboxuser@linux:~$ docker run --help

Usage:  docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container

Options:
  -d, --detach              Run container in background and print container ID
  -i, --interactive          Keep STDIN open even if not attached
  -t, --tty                 Allocate a pseudo-TTY
  -p, --publish list        Publish a container's port(s) to the host
      --name string         Assign a name to the container
  -v, --volume list         Bind mount a volume
  -e, --env list            Set environment variables
      --rm                  Automatically remove the container when it exits
```
