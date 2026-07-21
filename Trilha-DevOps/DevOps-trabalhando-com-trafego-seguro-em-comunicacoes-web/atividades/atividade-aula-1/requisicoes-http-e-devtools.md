# Requisições HTTP e ferramentas do navegador

Anotações das atividades sobre `curl`, `ping` e as ferramentas de desenvolvedor do navegador.

## 1. Requisição HTTP com curl
```bash
curl https://www.google.com
```
Manda uma requisição HTTP pro Google e mostra a resposta (o HTML bruto da página) direto no terminal.

## 2. Explorando HTML e CSS pelo DevTools
1. Abro o navegador e acesso um site (ex: `www.alura.com.br`)
2. Aperto `F12` pra abrir as ferramentas do desenvolvedor
3. Na aba **Elements**, exploro o HTML da página
4. Na aba **Styles**, examino o CSS aplicado em cada elemento

## 3. Teste de conectividade com ping
```bash
ping www.google.com
```
Testa se dá pra alcançar o site e mede o tempo de resposta (latência) de cada pacote enviado.

## 4. Analisando requisições na aba Network
1. Abro o navegador e acesso um site
2. Aperto `F12` e vou até a aba **Network**
3. Recarrego a página (`F5`)
4. Vejo cada requisição feita (HTML, CSS, JS, imagens), o tempo de carregamento de cada uma e o tipo de conteúdo transferido

## 5. Requisição HEAD com curl -I
```bash
curl -I https://www.google.com
```
A opção `-I` faz uma requisição **HEAD** — traz só os cabeçalhos da resposta HTTP (status, tipo de conteúdo, tamanho, etc.), sem baixar o corpo da página inteira.
