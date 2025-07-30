FROM php:8.3-apache

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libwebp-dev libfreetype6-dev zip unzip git curl \
    && docker-php-ext-install pdo pdo_mysql

COPY src/ /var/www/html/

EXPOSE 80