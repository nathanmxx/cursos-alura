# Parâmetros de consulta, caminho e autenticação no Postman

Anotações usando a API pública de teste `reqres.in`, boa pra praticar login e token sem precisar de conta real.

## 1. GET com parâmetros de consulta
```
GET https://reqres.in/api/users?page=2
```
O parâmetro `?page=2` na URL muda quais usuários vêm na resposta — a API retorna a segunda página de resultados.

## 2. POST com dados JSON
```
POST https://reqres.in/api/register
```
Corpo (raw/JSON):
```json
{
  "email": "eve.holt@reqres.in",
  "password": "pistol"
}
```
O servidor processa os dados enviados e responde com um `id` e um `token` de cadastro.

## 3. GET com parâmetro de caminho
```
GET https://reqres.in/api/users/2
```
Em vez de um parâmetro de consulta (`?...`), aqui o `2` faz parte do **caminho** da URL — busca direto as informações do usuário com esse ID.

## 4. Alterando parâmetros dinamicamente
Troco `?page=1` por `?page=2` na mesma solicitação GET e envio de novo. A resposta muda de acordo com o valor do parâmetro — cada página traz um conjunto diferente de usuários.

## 5. Obtendo e usando um token de autenticação
1. Solicitação POST pra obter o token:
```
POST https://reqres.in/api/login
```
Corpo (raw/JSON):
```json
{
  "email": "eve.holt@reqres.in",
  "password": "cityslicker"
}
```
A resposta traz um `token`.

2. Uso esse token numa solicitação GET pra uma área que exige autenticação, adicionando no cabeçalho:
```
Authorization: Bearer {token recebido no passo anterior}
```
Isso mostra a dinâmica comum de autenticação por token: primeiro loga (POST) pra ganhar o token, depois usa esse token nas próximas requisições (GET) pra provar que está autenticado.
