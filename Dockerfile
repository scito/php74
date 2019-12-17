# https://hub.docker.com/_/php/
# php74 with pdo_mysql
# Run with docker run -it --rm --name php74_execution --network="host" -v "$PWD":/usr/src/myapp -w /usr/src/myapp php74 php -f script.php -- -x

FROM php:7.4-cli
RUN docker-php-ext-install pdo pdo_mysql
