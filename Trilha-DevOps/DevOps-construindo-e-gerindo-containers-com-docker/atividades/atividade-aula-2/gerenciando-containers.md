# Gerenciando containers: nomear, acessar, pausar e mapear portas

## 1. Container Debian nomeado, rodando por 2 dias
```bash
docker run -d --name debian-container debian sleep 2d
```
`-d` roda em segundo plano (*detached*), `--name` dá um nome fácil de lembrar (`debian-container`), e `sleep 2d` mantém o container vivo por 2 dias em vez de encerrar na hora.

## 2. Acessando o bash do container
```bash
docker exec -it debian-container bash
```
Abre um terminal interativo (`-it`) dentro do container já rodando, dá pra navegar e executar comandos como se estivesse "dentro" do Debian.

## 3. Pausar e retomar o container
```bash
docker pause debian-container
docker unpause debian-container
```
`pause` congela a execução do container (sem parar de verdade, só suspende), e `unpause` retoma de onde parou.

## 4. Nginx com mapeamento de porta
```bash
docker run -d -p 8080:80 --name nginx-container nginx
```
`-p 8080:80` mapeia a porta 8080 do meu computador (host) pra porta 80 dentro do container, que é onde o Nginx escuta por padrão. Acesso pelo navegador em `http://localhost:8080`.

## 5. Site estático com dockersamples/static-site
```bash
docker run -d -p 8081:80 --name static-site-container dockersamples/static-site
```
Mesma lógica do Nginx, mas com a imagem de exemplo `dockersamples/static-site` e na porta 8081. Acesso em `http://localhost:8081` e vejo o site estático rodando dentro do container.
