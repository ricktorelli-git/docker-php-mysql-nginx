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
git clone git@github.com:ricktorelli-git/docker-php-mysql-nginx.git
```
- Acesse o diretório do projeto:

- Altere as variáveis de ambiente no arquivo .env.example
````bash
APP_NAME='Home do Projeto PHP'
APP_DESCRIPTION='Projeto PHP com Docker'
APP_AUTHOR='Seu Nome Completo'
APP_PORT=80

DB_HOST=mysql # Nome do container do mysql no docker-compose.yml
DB_ROOT_PASSWORD=root
DB_DATABASE=meu_banco_de_dados
DB_USER=user
DB_PASSWORD=password
DB_PORT=3306
PHPMYADMIN_PORT=8081
REDIS_PORT=6379
````
- Execute o comando 'make', este comando irá criar os containers e instalar as dependências do projeto.:
```bash
make
````
### Acessando o projeto
- Acesse o projeto em http://localhost
- Acesse o phpmyadmin em http://localhost:8081 (DB_USER, DB_PASSWORD)
- Acesse o redis em http://localhost:6379

### Comandos úteis
- Para parar os containers:
````bash
docker-compose down
````
- Para parar e remover os containers:
````bash
docker-compose down --volumes
````
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












