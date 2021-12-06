FROM php:7.3-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY . /app
RUN chown -R www-data:www-data /app && a2enmod rewrite
RUN apt-get update && apt-get upgrade -y
