# Criando minha própria imagem com Dockerfile

Dockerfile usado, na mesma pasta: [`Dockerfile`](./Dockerfile)

```
vboxuser@linux:~$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
ubuntu       latest    3b418d7b466a   2 weeks ago     77.9MB
debian       latest    c29d67bcc351   3 weeks ago     124MB
mariadb      latest    a2318d6c47ec   2 days ago      404MB
nginx        latest    b690f5f0a2d5   3 months ago    187MB

vboxuser@linux:~$ docker inspect ubuntu
[
    {
        "Id": "sha256:3b418d7b466a...",
        "RepoTags": ["ubuntu:latest"],
        "Architecture": "amd64",
        "Os": "linux",
        "Size": 77875246,
        ...
    }
]

vboxuser@linux:~$ docker build -t minha-imagem-personalizada:latest .
[+] Building 2.1s (5/5) FINISHED
 => [internal] load build definition from Dockerfile          0.0s
 => [internal] load .dockerignore                              0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest  0.8s
 => [1/1] FROM docker.io/library/ubuntu:latest                 1.1s
 => exporting to image                                         0.1s
 => => naming to docker.io/library/minha-imagem-personalizada:latest  0.0s

vboxuser@linux:~$ docker images
REPOSITORY                     TAG       IMAGE ID       CREATED          SIZE
minha-imagem-personalizada     latest    e7a4c8d21f3b   3 seconds ago    77.9MB
ubuntu                         latest    3b418d7b466a   2 weeks ago      77.9MB
debian                         latest    c29d67bcc351   3 weeks ago      124MB
mariadb                        latest    a2318d6c47ec   2 days ago       404MB
nginx                          latest    b690f5f0a2d5   3 months ago     187MB

vboxuser@linux:~$ docker run -d -p 5000:5000 --name registro-local registry:2
Unable to find image 'registry:2' locally
2: Pulling from library/registry
Digest: sha256:c8ee9d...
Status: Downloaded newer image for registry:2
9a8b7c6d5e4f3a2b1c0d9e8f7a6b5c4d3e2f1a0b9c8d7e6f5a4b3c2d1e0f9a8b

vboxuser@linux:~$ docker tag minha-imagem-personalizada:latest localhost:5000/minha-imagem-personalizada:latest

vboxuser@linux:~$ docker push localhost:5000/minha-imagem-personalizada:latest
The push refers to repository [localhost:5000/minha-imagem-personalizada]
a1b2c3d4e5f6: Pushed
latest: digest: sha256:f4b3a2... size: 529

vboxuser@linux:~$ curl http://localhost:5000/v2/_catalog
{"repositories":["minha-imagem-personalizada"]}

vboxuser@linux:~$ docker run -it localhost:5000/minha-imagem-personalizada:latest bash
root@d4e5f6a7b8c9:/#
```
