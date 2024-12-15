FROM ghcr.io/cwm360/wordpress:php8.3-apache

WORKDIR /var/www/html
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN install wp-cli.phar /usr/local/bin/wp



COPY ./extensions/* /usr/local/lib/php/extensions/no-debug-non-zts-20230831/ 

COPY ./confs/* /usr/local/etc/php/conf.d/


