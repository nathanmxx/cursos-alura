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

## 6. Push da imagem pra um registro
Em vez de criar uma conta no Docker Hub, usei um **registro Docker local**, rodando na própria VM — mesma ideia (subir a imagem pra um registro), sem depender de conta externa:

```bash
docker run -d -p 5000:5000 --name registro-local registry:2
```

Marco a imagem apontando pro registro local:
```bash
docker tag minha-imagem-personalizada:latest localhost:5000/minha-imagem-personalizada:latest
```

Faço o push:
```bash
docker push localhost:5000/minha-imagem-personalizada:latest
```

Confirmo que subiu, consultando o catálogo do registro:
```bash
curl http://localhost:5000/v2/_catalog
```

Por fim, executo um container a partir da imagem que subi, puxando ela de volta do registro:
```bash
docker run -it localhost:5000/minha-imagem-personalizada:latest bash
```
