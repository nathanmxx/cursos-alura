# Comandos básicos do Docker

Anotações dos primeiros comandos praticados com containers.

## 1. Criar um container com Debian
```bash
docker run debian
```
Baixa (se ainda não tiver) e roda um container a partir da imagem oficial do Debian.

## 2. Verificar containers em execução
```bash
docker ps
```
Lista só os containers que estão **rodando** no momento.

## 3. Detalhar todos os containers (rodando ou parados)
```bash
docker ps -a
```
O `-a` (all) mostra também os containers que já foram encerrados, não só os ativos.

## 4. Baixar a imagem do MariaDB
```bash
docker pull mariadb
```
Faz o download da imagem oficial do MariaDB (banco de dados) do Docker Hub, sem rodar nenhum container ainda — só deixa a imagem disponível localmente.

## 5. Explorando as opções do docker run
```bash
docker run --help
```
Mostra todas as opções e argumentos que dá pra usar com `docker run` (tipo `-d` pra rodar em segundo plano, `-p` pra mapear portas, `--name` pra nomear o container, etc.) — útil pra consultar sem precisar ir na documentação toda vez.
