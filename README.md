# Muchas Framework Boilerplate


## Pré-requisitos

* [NodeJS](https://nodejs.org/en/)
* [VS Code](https://code.visualstudio.com/download)
* [Docker e Docker Compose](https://docs.docker.com/install/)

## Estrutura básica de pastas

- src/
    - components/
        - example/
            - rest/
            - messages/
            - routines/
            - index.ts
    - models/
    - index.ts

## Arquivos
### .env
Todas as variáveis de ambiente se encontram nesse arquivo, qualquer configuração que seja diferente entre os ambientes, homologação, produção etc. devem vir aqui. Essas variaveis serão posteriormente substituidas também no arquivo `muchas.yml` que é o nosso arquivo de estrutura de configurações.
### .eslintrc.js

### .gitignore

### .gitlab-ci.yml

### apm-server.yml

### deplyoment.yml

### docker-compose-full.yml
Esse arquivo possui todos os serviços básicos usados:
* Mongo
* Elastic
* Elasticsearch
* APM Elastisearch
* Kibana
* Rabbit
* Redis
Desabilite conforme o seu uso para não sobrecarregar a sua máquina de desenvolvimento desnecessariamente. Para desabilitar basta comentar toda a sessão do serviço como no exemplo abaixo:
```yml
  boilerplate:
    container_name: boilerplate
    build: .
    environment:
    - NODE_ENV
    - PROJECT_NAME
    - DEBUG_PORT
    - DATABASE_URI
    - APM_HOST
    - TZ=America/Sao_Paulo
    volumes:
      - ./:/app/
    ports:
      - 8080:8080
      - 8181:8181
    networks:
      - loyall-network
    command: npm run dev
#   MongoDB
#   mongo:
#     image: mongo
#     logging:
#       driver: none
#     volumes:
#       - /data/db
#     ports:
#       - 27017:27017
#     networks:
#       - loyall-network
```
### docker-compose.yml

### Dockerfile

### muchas.yml

### package-lock.json

### package.json

### README.md

### tsconfig.json

# Quick Start

## Git Clone

Comece clonando esse repositório para a sua máquina e alter

```bash
$ git clone git@gitlab.com:loyall/dev/microservice-boilerplate.git
```