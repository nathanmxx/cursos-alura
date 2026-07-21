# Persistência de dados: bind mount, volumes e tmpfs

## 1. Bind mount com Debian
```bash
mkdir /home/vboxuser/dados-debian

docker run -it --mount type=bind,source=/home/vboxuser/dados-debian,target=/app debian bash
```
O bind mount liga uma pasta **real do meu sistema** (`/home/vboxuser/dados-debian`) a uma pasta dentro do container (`/app`). Crio um arquivo dentro do container, saio com `exit`, e ao rodar o mesmo comando de novo, o arquivo continua lá — porque na verdade ele está salvo no host, não no container.

## 2. Volume nomeado com Ubuntu
```bash
docker volume create meu-volume
docker run -it -v meu-volume:/app ubuntu bash
```
Diferente do bind mount, o **volume** é gerenciado pelo próprio Docker (não aponto pra uma pasta específica do host). Crio arquivos dentro do container, saio, e rodando um novo container com `-v meu-volume:/app` os dados continuam lá — o volume persiste independente do container ser destruído.

## 3. tmpfs com Alpine (persistência temporária)
```bash
docker run -it --tmpfs=/app alpine sh
```
O `tmpfs` guarda dados **só na memória RAM**, não no disco. Crio arquivos, saio do container. Diferente do bind mount e do volume, os dados em `tmpfs` **não sobrevivem** se o container for removido — só continuam se eu retomar o mesmo container com:
```bash
docker ps -a
docker start -ai ID_DO_CONTAINER
```

## 4. Volume com Nginx
```bash
docker volume create volume2-nginx
docker run -it -v volume2-nginx:/app nginx bash
```
Mesma lógica da atividade 2, agora com a imagem do Nginx — confirma que o conceito de volume funciona igual, independente da imagem usada.

## 5. MySQL com volume (persistência de banco de dados)
```bash
docker run -it -v meu-volume-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=minha_senha mysql
```
Aqui o volume guarda a pasta `/var/lib/mysql`, onde o MySQL armazena os dados do banco. Crio um banco e insiro dados, saio do container. Ao subir um novo container MySQL apontando pro mesmo volume (`meu-volume-mysql`), o banco e os dados continuam lá — é assim que se garante persistência de banco de dados rodando em container, já que o container em si é descartável, mas o volume não.
