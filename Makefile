version := $(shell git describe)

default: help

help:
	# tbd
	echo "."

schmunk42: build

build: build-php-nginx build-yii2 build-phundament

build-php-nginx:
	docker pull nginx:1.9
	docker pull php:5.6-cli
	docker pull php:5.6-fpm
	docker build -t schmunk42/nginx:1.9          schmunk42/nginx
	docker build -t schmunk42/php:5.6-fpm        schmunk42/php/fpm

build-yii2: build-php-nginx
	docker build -t schmunk42/php:5.6-fpm-yii-2.0-runtime         schmunk42/php/fpm-yii-runtime
	docker build -t schmunk42/php:5.6-cli-yii-2.0-runtime         schmunk42/php/cli-yii-runtime

build-phundament: build-yii2
	docker build -t phundament/php:5.6-fpm-prod    phundament/php/fpm-prod
	docker build -t phundament/php:5.6-fpm-dev     phundament/php/fpm-dev
	docker build -t phundament/php:5.6-cli-prod    phundament/php/cli-prod
	docker build -t phundament/php:5.6-cli-dev     phundament/php/cli-dev
	docker tag -f 	phundament/php:5.6-cli-dev 	   phundament/php:latest

tag:
	#
	# Tagging images
	#
	docker tag phundament/php:5.6-fpm-prod  phundament/php:5.6-fpm-$(version)-prod
	docker tag phundament/php:5.6-fpm-dev  	phundament/php:5.6-fpm-$(version)-dev
	docker tag phundament/php:5.6-cli-prod	phundament/php:5.6-cli-$(version)-prod
	docker tag phundament/php:5.6-cli-dev	phundament/php:5.6-cli-$(version)-dev

push:
	#
	# Pushing images to Docker Hub
	#
	docker push schmunk42/nginx:1.9

	docker push schmunk42/php:5.6-fpm
	docker push schmunk42/php:5.6-fpm-yii-2.0-runtime
	docker push schmunk42/php:5.6-cli-yii-2.0-runtime

	docker push phundament/php:latest

	docker push phundament/php:5.6-fpm-prod
	docker push phundament/php:5.6-fpm-dev
	docker push phundament/php:5.6-cli-prod
	docker push phundament/php:5.6-cli-dev

	docker push phundament/php:5.6-fpm-$(version)-prod
	docker push phundament/php:5.6-fpm-$(version)-dev
	docker push phundament/php:5.6-cli-$(version)-prod
	docker push phundament/php:5.6-cli-$(version)-dev


test: test-stack-php-nginx-vanilla-mount test-stack-php-nginx

test-stack-php-nginx-vanilla-mount:
	cd tests/phundament/php/stack-php-nginx-vanilla && \
	    docker-compose build && \
	    docker-compose up -d && \
	    docker-compose ps && \
	    docker-compose run cli env && \
	    docker-compose stop

test-stack-php-nginx:
	cd tests/phundament/php/stack-php-nginx && \
		docker-compose build && \
	    docker-compose run cli php -v && \
	    docker-compose up -d && \
	    docker-compose ps && \
	    docker-compose run cli env && \
	    docker-compose stop

x-lint: export DOCKERFILE_PATH=phundament/php-one/5.6-7.0
x-lint: export DOCKERFILE=Dockerfile-5.6-fpm
x-lint:
	docker run --rm -v "$(PWD)/$(DOCKERFILE_PATH)/$(DOCKERFILE)":/Dockerfile:ro redcoolbeans/dockerlint
	docker run --rm --privileged -v $(PWD)/$(DOCKERFILE_PATH):/root/ projectatomic/dockerfile-lint dockerfile_lint -f $(DOCKERFILE)

