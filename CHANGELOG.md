Docker images `phundament/php-one`
==================================

### 5.0.0

 - :warning: updated closure compiler path (npm) moved from `/root/compiler.jar` to `/usr/lib/node_modules/google-closure-compiler/compiler.jar`
 - :arrow_up: PHP **5.6.20**
 - :arrow_up: PHP **7.0.5**
 - :arrow_up: composer **1.0.1**
 - added version env variables
 - restructured container-files
 - set preferred install method for composer to dist
 - improved composer caching (added prestissimo plugin to composer)
 - added FASTCGI_PASS_HOST environment variable for PHP-fpm upstream to nginx image
 
### 4.7.0

 - :arrow_up: PHP **5.6.18**
 - :arrow_up: PHP **7.0.3**
 - :arrow_up: global packages
 - added GITHUB_API_TOKEN support
 - removed legacy files

### 4.6.3

 - use latest `composer` release via curl from GitHub API
 - hardened build
 - :new: climb (composer outdated check)

### 4.6.2

 - :arrow_up: PHP **5.6.17**
 - :arrow_up: PHP **7.0.2**
 - :new: added lesshint
 - removed already exposed ports
 
### 4.6.1

 - :arrow_up: PHP **7.0.1**
 - :arrow_up: codeception **2.1.5**
 - :up: package cache
 - do not ignore errors in deploy script

### 4.6.0

- disabled xdebug loading by default

### 4.6.0-beta1

- :new: nginx elk logging
- :arrow_up: codeception `**2.1.4**

> :warning: **4.6.0-beta1** requires rebuilding of tester classes with `codecept build`

---

Legacy images: `phundament/php`
-------------------------------

### 4.5.0

- [UPD] PHP to **5.6.15**
- [UPD] composer **1.0.0-alpha11**
- [UPD] composer-asset-plugin **1.1.1**

### 4.4.0

- [ENH] added PHP-extensions bcmath and soap cli-dev, fpm-dev

### 4.2.1

- [FIX] removed composer cache volume

### 4.0.0

- initial release



