## Modelo de projeto PHP com Docker

Projeto base para desenvolvimento de aplicações em php utilizando container docker. Foi concebido para ser utilizado em
ambiente de desenvolvimento, não sendo recomendado para ambiente de produção, pois requer mais segurança. Foi utilizado
o docker-compose para orquestrar os containers. Composer para gerenciar as dependências do projeto. Bootstrap 5 para o
layout e make para automatizar as tarefas.

### Requisitos:
- docker
- git
- composer
- bootstrap 5
- make (cmake)

### Os containers Docker pré-definidos são:
- php_fpm: container com php-fpm
- nginx: container com nginx
- mysql: container com mysql
- phpmyadmin: container com phpmyadmin
- redis: container com redis
- 
### Preparando o ambiente de desenvolvimento
- Clone o repositório:
```bash
git clone
```
- Acesse o diretório do projeto:

- Execute o comando make para instalar o projeto completo:
```bash
make
```
- Acesse o projeto em http://localhost
- Acesse o phpmyadmin em http://localhost:8081
- Acesse o redis em http://localhost:6379

- Para parar os containers:
````bash
docker-compose down
````
- Para parar e remover os containers:
````bash
docker-compose down --volumes
````
### Comandos úteis
```bash
docker compose build --no-cache # Recria as imagens
```
- Para acessar o container php_fpm e saber a versão do php:
```bash
docker-compose run --rm php_fpm php -v
```
- Para acessar o container php_fpm e saber a versão do composer:
```bash
docker-compose run --rm php_fpm composer --version
```
- Para instalar as dependências do projeto:
```bash
docker-compose run --rm php_fpm composer install
```
- Rodar sempre que alterar algo no arquivo `composer.json`
```bash
docker-compose run --rm php_fpm composer dump-autoload
```












