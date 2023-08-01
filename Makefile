DOCKER_COMPOSE = docker-compose -f docker-compose.yml
ALL_CONTAINERS = docker ps -aq

start: ## Run ALL the services in development mode
	docker-compose up --build
	
stop: ## start e2e tests in already running container
	docker-compose down

build: 
	docker build -t nes_compiler .

connect: ## Start a terminal session in server container
	$(DOCKER_COMPOSE) exec nes-build-container bash

delete:
	docker-compose down
	docker rmi dockerized-nes-compiler_nes-build-container