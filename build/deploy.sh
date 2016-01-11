#!/usr/bin/env bash

set -e

docker login --username $REGISTRY_USER --password $REGISTRY_PASS --email $REGISTRY_EMAIL $REGISTRY_HOST

# Create tagged image from git tag
LATEST_TAG=`git describe --abbrev=0`
export CURRENT_VERSION=`git describe`

## Create tagged image
if [ "$LATEST_TAG" = "$CURRENT_VERSION" ]; then
    echo "Stable tag detected. ($CURRENT_VERSION)"
    export STABLE_VERSION=1
else
    echo "No stable tag found. ($CURRENT_VERSION)"
    export STABLE_VERSION=0
fi;

if [ $STABLE_VERSION = 1 ]; then
    set +e
    docker tag phundament/nginx-one:1.9 phundament/nginx-one:1.9-${CURRENT_VERSION}
    docker tag phundament/php-one:5.6-apache phundament/php-one:5.6-apache-${CURRENT_VERSION}
    docker tag phundament/php-one:5.6-fpm phundament/php-one:5.6-fpm-${CURRENT_VERSION}
    docker tag phundament/php-one:7.0-fpm phundament/php-one:7.0-fpm-${CURRENT_VERSION}
    set -e

    docker push phundament/nginx-one:1.9-${CURRENT_VERSION}
    docker push phundament/php-one:5.6-apache-${CURRENT_VERSION}
    docker push phundament/php-one:5.6-fpm-${CURRENT_VERSION}
    docker push phundament/php-one:7.0-fpm-${CURRENT_VERSION}
fi;

docker tag -f phundament/php-one:5.6-fpm phundament/php-one:5.6

docker push phundament/nginx-one:1.9
docker push phundament/php-one:5.6-apache
docker push phundament/php-one:5.6-fpm
docker push phundament/php-one:7.0-fpm
docker push phundament/php-one:5.6