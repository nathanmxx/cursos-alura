# Comandos básicos do Linux

Anotações dos comandos praticados pra criar e manipular arquivos/diretórios pelo terminal.

## 1. Criar um diretório
```bash
mkdir Docs
```
`mkdir` cria um novo diretório — nesse caso, `Docs` dentro da pasta atual.

## 2. Criar/editar um arquivo de texto
```bash
nano notas.txt
```
Abre o editor `nano`. Se `notas.txt` não existir ainda, ele é criado ao salvar.

## 3. Criar um arquivo vazio
```bash
touch novo.txt
```
`touch` cria um arquivo vazio (ou só atualiza a data de modificação, se ele já existir).

## 4. Escrever num arquivo
```bash
echo "Olá, Mundo!" > saudacao.txt
```
`echo` imprime o texto, e o `>` redireciona essa saída pro arquivo `saudacao.txt`, criando-o (ou sobrescrevendo o conteúdo, se já existir).

## 5. Ler o conteúdo de um arquivo
```bash
cat saudacao.txt
```
Mostra no terminal o que está dentro do arquivo.

## 6. Adicionar texto sem apagar o que já existe
```bash
echo "Bem-vindo ao Linux!" >> saudacao.txt
```
O `>>` (dois sinais) **anexa** o texto ao final do arquivo, diferente do `>` (um sinal) que sobrescreve.

## 7. Listar o conteúdo de um diretório
```bash
ls Docs
```
`ls` lista os arquivos e pastas de dentro de `Docs`.
