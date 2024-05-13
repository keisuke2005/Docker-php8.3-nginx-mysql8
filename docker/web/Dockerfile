FROM webdevops/php-nginx:8.3

RUN apt-get update && \
        apt-get install -y git unzip libzip-dev libicu-dev libonig-dev && \
        docker-php-ext-install intl pdo_mysql zip bcmath

COPY ./docker/web/default.conf /etc/nginx/conf.d/default.conf
COPY ./docker/web/php.ini /usr/local/etc/php/php.ini
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

