# Analisando tráfego seguro com Wireshark e Postman

Anotações das atividades de captura e análise de tráfego HTTPS/HTTP.

## 1. Capturando tráfego HTTPS
1. Abro o Wireshark e seleciono a interface de rede
2. Clico em **Start** pra iniciar a captura
3. Acesso um site seguro (HTTPS) no navegador
4. Paro a captura
5. Filtro só o tráfego relevante digitando `tls` na barra de filtros
6. Analiso os pacotes: dá pra ver o **handshake SSL/TLS** (a negociação inicial entre cliente e servidor), mas o conteúdo em si aparece **criptografado** — diferente do HTTP puro, não dá pra ler os dados trafegados

## 2. Capturando tráfego HTTP (sem criptografia)
Repito o processo, mas acessando um site sem HTTPS. Filtrando por `http` no Wireshark, dá pra ver **em texto claro**: o método usado (GET, POST), a URI acessada e o código de status da resposta — tudo visível, porque não tem criptografia.

## 3. Autenticação HTTPS no Postman
1. Crio uma solicitação no Postman pra um site que exige autenticação
2. Preencho as credenciais na aba de autenticação
3. Executo a solicitação — o Postman cuida de enviar as credenciais de forma segura, já que a conexão é HTTPS

## 4. Resposta HTML capturada com segurança
1. Faço uma requisição GET no Postman pra um site que retorna HTML
2. Capturo o tráfego dessa requisição no Wireshark
3. Mesmo capturando o pacote, o conteúdo HTML aparece criptografado — só o Postman (o "cliente" da conexão) consegue decodificar e mostrar o HTML de verdade

## 5. Por que HTTPS protege contra interceptação
1. Modifico uma requisição GET no Postman (parâmetros ou headers)
2. Capturo o tráfego dessa requisição alterada no Wireshark
3. Mesmo alterando a requisição, o conteúdo continua ilegível pra quem está só observando o tráfego — isso mostra na prática por que HTTPS dificulta ataques de interceptação (*man-in-the-middle*): quem captura o pacote não consegue ler nem manipular o conteúdo sem quebrar a criptografia
