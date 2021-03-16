# Docker for RabbitMQ
<img alt="RabbitMq" src="https://img.shields.io/badge/RabbitMq-FF6600?&style=flat&logo=rabbitmq&logoColor=FFFFFF">&nbsp;
<img alt="Docker" src="https://img.shields.io/badge/Docker-2496ED?&style=flat&logo=docker&logoColor=ffffff">&nbsp;

## Description
This repository made for build simple of RabbitMQ with docker.

## Prerequisite
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Quick Start
```bash
    sudo docker-compose up -d
```

## Default Value
Create `.env` file to define your own value
| Variable name | Default value | Datatype | Description |
|:--------------|:--------------|:--------:|------------:|
| SERVER_PORT | 5672 | number | RabbitMQ port |
| MANAGEMENT_PORT | 15672 | number | Management port |
| DEFAULT_USERNAME | root | text | Username |
| DEFAULT_PASSWORD | password | text | Password |

## Setup
**Step 1:** Add node into your `docker-compose.yml`
```yaml
version: '3.3'

services:
  rabbitmq:
    image: rabbitmq:3-management
    container_name: rabbitmq
    volumes:
      - rabbitmq-vol:/var/lib/rabbitmq
      - rabbitmq-log:/var/log/rabbitmq
    networks:
      - rabbitmq-net
```
**Step 2:** Add default port in ports
```yaml
    ports:
      - "${SERVER_PORT}:5672"
      - "${MANAGEMENT_PORT}:15672"
```

**Step 3:** Add default account in environment

You can change default user and password in 'environment' section
```yaml
    environment:
      - RABBITMQ_DEFAULT_USER=${DEFAULT_USERNAME}
      - RABBITMQ_DEFAULT_PASS=${DEFAULT_PASSWORD}
```
**Step 4:** Add the volume description
```yaml
volumes:
  rabbitmq-vol:
    driver: local
  rabbitmq-log:
    driver: local
```
**Step 5:** Add the network description
```yaml
networks:
  rabbitmq-net:
    driver: bridge 
```
**Step 6:** Copy `default.evn` to `.env` for define value
```bash
  cp default.env .env
```

The `docker-compose.yml` will look like this
```yaml
version: '3.3'

services:
  rabbitmq:
    image: rabbitmq:3-management
    container_name: rabbitmq
    volumes:
      - rabbitmq-vol:/var/lib/rabbitmq
      - rabbitmq-log:/var/log/rabbitmq
    networks:
      - rabbitmq-net
    ports:
      - "${SERVER_PORT}:5672"
      - "${MANAGEMENT_PORT}:15672"            
    environment:
      - RABBITMQ_DEFAULT_USER=${DEFAULT_USERNAME}
      - RABBITMQ_DEFAULT_PASS=${DEFAULT_PASSWORD}

volumes:
  rabbitmq-vol:
    driver: local
  rabbitmq-log:
    driver: local

networks:
  rabbitmq-net:
    driver: bridge
```

## Reference
[Docker Hub](https://hub.docker.com/_/rabbitmq) <br>
[X Team](https://x-team.com/blog/set-up-rabbitmq-with-docker-compose/)

## Contributor
<a href="https://github.com/Harin3Bone"><img src="https://img.shields.io/badge/Harin3Bone-181717?style=flat&logo=github&logoColor=ffffff"></a>
