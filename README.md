> # :no_entry: Deprecation notice

> **:bangbang: The PHP image is no longer actively maintained, 
> it's recommended to upgrade to [`dmstr/php-yii2`](https://github.com/dmstr/docker-php-yii2)**
>
> The new PHP image has an `*-nginx` flavour available or can be used with `phundament/nginx-one`.

---

Phundament Docker images
========================

[![build status](https://git.hrzg.de/phundament/docker-images/badges/master/build.svg)](https://git.hrzg.de/phundament/docker-images/builds?scope=all)

Ressources
----------

- [GitHub](https://github.com/phundament/docker-images)

This repository contains the `Dockerfile`s for building *PHP* and *nginx* Docker images.


Setup
-----

You need to set the environment variable `GITHUB_TOKEN` to a valid token, to download ZIP-files during build.


Docker Hub
----------

### Phundament PHP & nginx 

https://hub.docker.com/r/phundament/php-one/

- `5.6-fpm-5.0.1`, `5.6-fpm` (phundament/php-one/5.6-7.0/Dockerfile-5.6-fpm)
- `5.6-apache-5.0.1`, `5.6-apache` (phundament/php-one/5.6-7.0/Dockerfile-5.6-apache)
- `7.0-fpm-5.0.1`, `7.0-fpm` (phundament/php-one/5.6-7.0/Dockerfile-7.0-fpm)

https://hub.docker.com/r/phundament/nginx-one/

> *legacy-images* - last release `5.6-[..]-4.5.1`
>
> - https://hub.docker.com/r/phundament/php/

### Basic PHP & nginx

- https://hub.docker.com/r/schmunk42/php/
- https://hub.docker.com/r/schmunk42/nginx/


Derived images
--------------

Phundament application

- https://hub.docker.com/r/phundament/app/ 


Features
--------

### nginx

- 512M client body size

### PHP

#### fpm and cli (one)

 - basic nginx configuration
 - installation of PHP-extensions for Yii 2.0 Framework
   - gd
   - intl
   - pdo_mysql
   - mbstring
   - mcrypt
   - zip
   - apcu
   - upload_max_filesize 512M
   - memory_limit 128M
 - composer
 - fxp/composer-asset-plugin


Links
-----

- http://diemeisterei.de
- http://phundament.com
