# Requisições HTTP com curl e ping

```
C:\Users\Usuário>curl https://www.google.com
<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="pt-BR"><head><meta content="text/html; charset=UTF-8" http-equiv="Content-Type"><meta content="origin" name="referrer"><title>Google</title>...

C:\Users\Usuário>ping www.google.com

Disparando www.google.com [142.250.218.100] com 32 bytes de dados:
Resposta de 142.250.218.100: bytes=32 tempo=14ms TTL=57
Resposta de 142.250.218.100: bytes=32 tempo=13ms TTL=57
Resposta de 142.250.218.100: bytes=32 tempo=13ms TTL=57
Resposta de 142.250.218.100: bytes=32 tempo=14ms TTL=57

Estatísticas do Ping para 142.250.218.100:
    Pacotes: Enviados = 4, Recebidos = 4, Perdidos = 0 (0% de perda)
Aproximar um número redondo de vezes em milissegundos:
    Mínimo = 13ms, Máximo = 14ms, Média = 13ms

C:\Users\Usuário>curl -I https://www.google.com
HTTP/2 200
content-type: text/html; charset=ISO-8859-1
content-security-policy-report-only: object-src 'none';base-uri 'self';script-src ...
date: Thu, 23 Jul 2026 14:02:11 GMT
server: gws
```
