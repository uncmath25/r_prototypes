.PHONY: clean build down upn

DOCKER_COMPOSE_NOTEBOOK="docker-compose-notebook.yml"

clean:
	@echo "*** Cleaning the repo ***"
	rm -rf output/*

build: clean
	@echo "*** Building the docker images ***"
	docker-compose -f $(DOCKER_COMPOSE_NOTEBOOK) build

down:
	@echo "*** Stopping the Dockerized environments ***"
	docker-compose -f $(DOCKER_COMPOSE_NOTEBOOK) down --remove-orphans

upn: down build
	@echo "*** Starting the Dockerized jupyter server ***"
	@echo "Access the server at: http://localhost:8888"
	docker-compose -f $(DOCKER_COMPOSE_NOTEBOOK) up -d
