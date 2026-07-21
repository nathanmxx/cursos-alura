# Resolução DNS e rotas de rede

Anotações das atividades sobre `ping`, `tracert` e `nslookup`.

## 1. IP do YouTube com ping
```
ping youtube.com
```
`ping` testa a conectividade com um servidor. Ao pingar o `youtube.com`, o endereço IP associado à plataforma aparece na resposta.

## 2. Rota até a Alura com tracert
```
tracert alura.com.br
```
`tracert` rastreia a rota que os pacotes percorrem até chegar no destino, mostrando cada "salto" (roteador) pelo caminho até a plataforma da Alura.

## 3. Resolução DNS do Google
```
nslookup www.google.com
```
`nslookup` faz a resolução de DNS, mostrando o endereço IP associado ao domínio.

## 4. Rota até um site internacional
```
tracert www.utwente.nl
```
Mesma ideia da atividade 2, mas pra um site fora do Brasil (Universidade de Twente, Holanda). Dá pra comparar o tempo de resposta e a quantidade de saltos com a rota até a Alura — sites internacionais tendem a ter mais saltos e latência maior.

## 5. Resolução DNS da USP
```
nslookup www.usp.br
```
