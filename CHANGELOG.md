Docker images `phundament/php-one`
==================================

### latest

 - use latest `composer` release via curl from GitHub API
 - hardened build

### 4.6.2

 - PHP 5.6.17
 - PHP 7.0.2
 - added lesshint
 - removed already exposed ports
 
### 4.6.1

> :warning: requires rebuilding of tester classes with `codecept build`

 - PHP 7.0.1
 - :arrow_up: package cache
 - :arrow_up: codeception `^2.1.5`, :arrow_up: package cache
 - do not ignore errors in deploy script

### 4.6.0

- [UPD] disabled xdebug loading by default

### 4.6.0-beta1

- [NEW] nginx elk logging


Legacy images: `phundament/php`
-------------------------------

### 4.5.0

- [UPD] PHP to 5.6.15
- [UPD] composer 1.0.0-alpha11
- [UPD] composer-asset-plugin 1.1.1

### 4.4.0

- [ENH] added PHP-extensions bcmath and soap cli-dev, fpm-dev

### 4.2.1

- [FIX] removed composer cache volume

### 4.0.0

- initial release



