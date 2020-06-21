# https://hub.docker.com/_/php/
# php74 with pdo_mysql
# Run with docker run -i --rm --name php74_execution --network="host" -v "$PWD":/usr/src/myapp -w /usr/src/myapp php74 php -f script.php -- -x

# https://gist.github.com/chadrien/c90927ec2d160ffea9c4
# https://phauer.com/2017/debug-php-docker-container-idea-phpstorm/

FROM php:7.4-cli
RUN apt-get update && apt-get install -y \
        libicu-dev \
    && docker-php-ext-install \
        pdo_mysql \
        intl \
    && pecl install xdebug-2.9.6 \
    && docker-php-ext-enable xdebug \
    && echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_connect_back=0" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_autostart=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
