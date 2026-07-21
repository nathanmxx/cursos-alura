# Resolução DNS e rotas de rede

```
C:\Users\Usuário>ping youtube.com

Disparando youtube.com [142.250.218.174] com 32 bytes de dados:
Resposta de 142.250.218.174: bytes=32 tempo=15ms TTL=57
Resposta de 142.250.218.174: bytes=32 tempo=14ms TTL=57
Resposta de 142.250.218.174: bytes=32 tempo=15ms TTL=57
Resposta de 142.250.218.174: bytes=32 tempo=14ms TTL=57

Estatísticas do Ping para 142.250.218.174:
    Pacotes: Enviados = 4, Recebidos = 4, Perdidos = 0 (0% de perda)

C:\Users\Usuário>tracert alura.com.br

Rastreando a rota para alura.com.br [104.18.32.115]
com no máximo 30 saltos:

  1     2 ms     1 ms     1 ms  192.168.15.1
  2    14 ms    14 ms    13 ms  10.10.10.1
  3    16 ms    15 ms    15 ms  187.100.10.1
  ...
  9    18 ms    17 ms    18 ms  104.18.32.115

Rastreamento concluído.

C:\Users\Usuário>nslookup www.google.com
Servidor:  dns.google
Address:  8.8.8.8

Resposta não autoritativa:
Nome:    www.google.com
Address:  142.250.218.164

C:\Users\Usuário>tracert www.utwente.nl

Rastreando a rota para www.utwente.nl [130.89.0.101]
com no máximo 30 saltos:

  1     2 ms     1 ms     1 ms  192.168.15.1
  2    14 ms    14 ms    13 ms  10.10.10.1
  ...
  14   187 ms   185 ms   186 ms  130.89.0.101

Rastreamento concluído.

C:\Users\Usuário>nslookup www.usp.br
Servidor:  dns.google
Address:  8.8.8.8

Resposta não autoritativa:
Nome:    www.usp.br
Address:  143.107.185.15
```

Comparando as duas rotas: até a Alura (servidor no Brasil) foram só 9 saltos com ~18ms; até a Universidade de Twente (Holanda) foram 14 saltos e ~186ms — bem mais longe, mais roteadores no caminho.
