ARG PHP_VERSION=8.1.18

FROM php:$PHP_VERSION-fpm-alpine

#RUN apk update && apk upgrade openssl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
