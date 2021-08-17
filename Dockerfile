FROM php:7.4-apache

RUN docker-php-ext-install mysqli && \
    apt-get update && \
    apt-get install unzip && \
    cd /root && \
    curl --location --output sitepress.zip https://www.classicpress.net/latest.zip && \
    unzip sitepress.zip && \
    rm -r /var/www/html && \
    mv ClassicPress* /var/www/html && \
    chown -R www-data:www-data /var/www/html
