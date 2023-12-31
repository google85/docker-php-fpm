ARG PHP_VERSION=8.2

FROM php:$PHP_VERSION-fpm-alpine

RUN apk --no-cache update && apk upgrade openssl curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
