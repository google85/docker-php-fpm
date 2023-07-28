PHP_VERSION=8.1.18
DOCKER_IMAGE_TAG=8.1.18

help: ## View all make targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build the image
	docker build .  --build-arg PHP_VERSION=${PHP_VERSION} -t google85/php-fpm:${DOCKER_IMAGE_TAG}

push: ## Push the builded image to DockerHub
	docker push google85/php-fpm:${DOCKER_IMAGE_TAG}
