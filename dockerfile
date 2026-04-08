FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libicu-dev libxml2-dev libzip-dev zlib1g-dev \
    ghostscript libpq-dev librtmp-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd intl mysqli opcache zip soap exif

RUN mkdir -p /var/www/html/moodledata && \
    chown www-data:www-data /var/www/html/moodledata && \
    chmod 777 /var/www/html/moodledata

COPY ./moodle /var/www/html/moodle

RUN chown -R www-data:www-data /var/www/html/moodle && \
    chmod -R 755 /var/www/html/moodle && \
    chmod -R 777 /var/www/

WORKDIR /var/www/html/moodle