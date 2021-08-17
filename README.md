# Test environment for ClassicPress

This will download and install the latest stable version of ClassicPress to a
local docker image and launch a test environment running PHP 7.4 and MariaDB.

1. Clone this repo
2. Add your plugins and/or themes `docker-compose.yml`
3. Run `docker-compose up`
4. Go to [http://localhost:8080](http://localhost:8080) and enter database details from `docker-compose.yml` (hostname = `db`)
5. Start testing

To test your plugins or themes using a different PHP version, modify the first
line in `Dockerfile`. E.g. to test a plugin using PHP 8, change the first line
from `FROM php:7.4-apache` to `FROM php:8.0-apache`. Refer to [the base
image](https://hub.docker.com/_/php) for instructions on how to enable or
install additional php extensions (`docker-php-ext-configure`,
`docker-php-ext-install`, and `docker-php-ext-enable`).
