# Escalando containers na nuvem: AWS e Kubernetes

## 1. Escalonamento automático com Elastic Beanstalk
1. No console da AWS, acesso o **Elastic Beanstalk**
2. Seleciono minha aplicação, vou em **Configuração** → **Escalabilidade**
3. Ativo o escalonamento automático e configuro políticas, métricas e alertas (ex: escalar quando o uso de CPU passar de X%)

Isso permite que a aplicação suba mais instâncias sozinha quando o tráfego aumenta, sem precisar de intervenção manual.

## 2. Outros serviços AWS pra aplicações conteinerizadas
- **Amazon RDS**: banco de dados gerenciado — em vez de rodar o banco dentro de um container, uso um serviço separado da AWS que já cuida de backup, escalabilidade e manutenção
- **Amazon S3**: armazenamento de objetos (arquivos, imagens, backups) fora do container, já que containers não devem guardar dados importantes
- **Amazon ECS**: orquestração de containers da própria AWS — gerencia onde e quantos containers rodam, similar ao que o Kubernetes faz, mas integrado nativamente aos outros serviços AWS

## 3. Docker Compose
Arquivo [`docker-compose.yml`](./docker-compose.yml) definindo um serviço (`app`) com sua imagem e mapeamento de porta. Compose serve pra coordenar múltiplos containers (e suas redes/volumes) com um comando só (`docker compose up`), em vez de subir cada um na mão com `docker run`.

## 4. CI/CD com GitHub Actions
Arquivo [`ci-cd-docker.yml`](./ci-cd-docker.yml) (no projeto real, ficaria em `.github/workflows/`). O workflow roda automaticamente a cada `push` na branch `main`: baixa o código, constrói a imagem Docker, loga no Docker Hub usando *secrets* do repositório (credenciais nunca ficam expostas no código) e faz o push da imagem atualizada.

## 5. Kubernetes — pra que serve
Pesquisei sobre Kubernetes: é uma ferramenta de **orquestração de containers**, criada pelo Google, que resolve o problema de gerenciar **muitos** containers em produção — reinicia automaticamente containers que caem, distribui a carga entre várias máquinas, escala pra cima ou pra baixo conforme a demanda, e permite atualizar a aplicação sem downtime.

Em serviços de nuvem, o Kubernetes normalmente não é rodado "na mão" — a AWS oferece o **EKS** (Elastic Kubernetes Service), que cuida da parte mais complexa de administrar o cluster. Isso é relevante pro meu objetivo de carreira: a Compsis (empresa em que tenho interesse) usa justamente Docker + Kubernetes + Openshift (uma plataforma da Red Hat construída em cima do Kubernetes) pra rodar os sistemas de pedágio em produção.
