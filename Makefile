start: ## Run ALL the services in development mode
	docker-compose up --build
	
stop: ## start e2e tests in already running container
	docker-compose down
