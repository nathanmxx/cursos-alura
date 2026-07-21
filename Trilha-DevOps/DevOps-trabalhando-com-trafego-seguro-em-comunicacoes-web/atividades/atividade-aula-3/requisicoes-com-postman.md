# Requisições HTTP com Postman

Anotações das atividades feitas no Postman, testando os métodos GET e POST.

## 1. GET simples
1. Abro o Postman e crio uma nova solicitação
2. Método: `GET`, URL: `https://jsonplaceholder.typicode.com/posts/1`
3. Clico em **Send**
4. Analiso a resposta: corpo (JSON com o post), cabeçalhos e código de status (`200 OK`)

## 2. GET com parâmetros de consulta
Mesma solicitação, mas adicionando parâmetros na URL:
```
https://jsonplaceholder.typicode.com/posts?userId=1
```
Com o parâmetro `?userId=1`, a resposta muda — em vez de um post só, retorna todos os posts filtrados por aquele usuário.

## 3. POST com dados JSON
1. Nova solicitação, método `POST`, URL: `https://jsonplaceholder.typicode.com/posts`
2. No corpo (**Body**), seleciono **raw** e o formato **JSON**
3. Insiro os dados:
```json
{
  "title": "Meu post de teste",
  "body": "Conteudo do post",
  "userId": 1
}
```
4. Clico em **Send** — o servidor responde com o objeto criado, incluindo um novo `id`

## 4. Inspecionando os cabeçalhos da resposta
Na aba de **Headers** da resposta (de qualquer uma das solicitações anteriores), aparecem detalhes como:
- `Content-Type: application/json; charset=utf-8` — o tipo de conteúdo retornado
- `Content-Length` — o tamanho da resposta em bytes

## 5. GET no YouTube e análise do HTML
1. Nova solicitação GET pra `https://www.youtube.com`
2. Clico em **Send**
3. Diferente das requisições anteriores (que retornam JSON), a resposta aqui é **HTML puro** — a página inteira que o navegador normalmente renderiza visualmente
