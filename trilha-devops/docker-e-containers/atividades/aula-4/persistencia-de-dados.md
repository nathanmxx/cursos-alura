# Persistência de dados: bind mount, volumes e tmpfs

```
vboxuser@linux:~$ mkdir /home/vboxuser/dados-debian

vboxuser@linux:~$ docker run -it --mount type=bind,source=/home/vboxuser/dados-debian,target=/app debian bash
root@a1b2c3d4e5f6:/# echo "persistindo via bind mount" > /app/teste.txt
root@a1b2c3d4e5f6:/# exit
exit

vboxuser@linux:~$ docker run -it --mount type=bind,source=/home/vboxuser/dados-debian,target=/app debian bash
root@f6e5d4c3b2a1:/# cat /app/teste.txt
persistindo via bind mount
root@f6e5d4c3b2a1:/# exit
exit

vboxuser@linux:~$ docker volume create meu-volume
meu-volume

vboxuser@linux:~$ docker run -it -v meu-volume:/app ubuntu bash
root@b2c3d4e5f6a7:/# echo "persistindo via volume" > /app/teste.txt
root@b2c3d4e5f6a7:/# exit
exit

vboxuser@linux:~$ docker run -it -v meu-volume:/app ubuntu bash
root@c3d4e5f6a7b8:/# cat /app/teste.txt
persistindo via volume
root@c3d4e5f6a7b8:/# exit
exit

vboxuser@linux:~$ docker run -it --tmpfs=/app alpine sh
/ # echo "so na memoria" > /app/teste.txt
/ # cat /app/teste.txt
so na memoria
/ # exit

vboxuser@linux:~$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED         STATUS                     PORTS     NAMES
d4e5f6a7b8c9   alpine    "sh"      20 seconds ago  Exited (0) 5 seconds ago             quirky_lamarr

vboxuser@linux:~$ docker start -ai d4e5f6a7b8c9
/ # cat /app/teste.txt
cat: can't open '/app/teste.txt': No such file or directory
/ # exit

vboxuser@linux:~$ docker volume create volume2-nginx
volume2-nginx

vboxuser@linux:~$ docker run -it -v volume2-nginx:/app nginx bash
root@e5f6a7b8c9d0:/# echo "volume funciona igual com nginx" > /app/teste.txt
root@e5f6a7b8c9d0:/# exit
exit

vboxuser@linux:~$ docker run -it -v meu-volume-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=minha_senha mysql
2026-07-23 15:10:02+00:00 [Note] [Entrypoint]: Initializing database files
...
2026-07-23 15:10:14+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.
```

`tmpfs` confirmou o que eu esperava: os dados sumiram assim que o container parou de rodar (mesmo retomando o mesmo container com `docker start -ai`, não com um novo) — diferente do bind mount e do volume, que sobrevivem mesmo criando um container novo do zero.
