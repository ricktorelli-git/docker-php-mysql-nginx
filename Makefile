prepare:
	@echo "--> Preparando ambiente..."
	@echo "--> Iniciando o projeto..."
	@sh ./bin/prepare.sh
	@cp .env.example .env
	@echo "--> Iniciando containers..."
	@docker compose up -d
	@docker-compose run --rm php_fpm php -v
	@docker-compose run --rm php_fpm composer --version





