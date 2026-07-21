# Criando minha própria imagem com Dockerfile

## 1. Ver as imagens disponíveis
```bash
docker images
```
Lista todas as imagens já baixadas ou criadas no meu computador.

## 2. Inspecionar as camadas de uma imagem
```bash
docker inspect ubuntu
```
Mostra os detalhes da imagem, incluindo as camadas que a compõem, variáveis de ambiente e configuração.

## 3. Criando o Dockerfile
Arquivo [`Dockerfile`](./Dockerfile) nessa mesma pasta, usando o Ubuntu como base:
```dockerfile
FROM ubuntu:latest
LABEL description="Imagem Docker personalizada"
```

## 4. Construindo a imagem
```bash
docker build -t minha-imagem-personalizada:latest .
```
O `-t` dá um nome (tag) pra imagem, e o `.` no final indica que o Dockerfile está no diretório atual.

## 5. Confirmando que a imagem foi criada
```bash
docker images
```
A `minha-imagem-personalizada` deve aparecer na lista agora.
