prepare:
	@echo "--> Preparando ambiente..."
	@sh ./bin/prepare.sh
	@cp .env.example .env
	@echo "--> Iniciando containers..."
	@docker compose up -d
	@docker-compose run --rm php_fpm php -v
	@docker-compose run --rm php_fpm composer --version
	@docker-compose run --rm php_fpm composer self-update --update-keys
	docker-compose run --rm php_fpm composer dump-autoload
	@docker-compose run --rm php_fpm composer diagnose






