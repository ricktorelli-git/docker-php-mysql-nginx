prepare:
	@echo "--> Preparando ambiente..."
	@sh ./bin/prepare.sh
	@cp .env.example .env
	@echo "--> Iniciando containers..."
	@docker compose up -d
	@echo "--> Verificando versões..."
	@docker-compose run --rm php_fpm php -v
	@docker-compose run --rm php_fpm composer --version
	@echo "--> atualizado chaves públicas do composer..."
	@docker-compose run --rm php_fpm composer self-update --update-keys
	@echo "--> Instalando dependências..."
	@docker-compose run --rm php_fpm composer dump-autoload
	@echo "--> Rodando diagnóstico..."
	@docker-compose run --rm php_fpm composer diagnose






