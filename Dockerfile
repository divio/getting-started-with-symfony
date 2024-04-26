FROM php:8.3-fpm

ENV COMPOSER_ALLOW_SUPERUSER=1

WORKDIR /var/www/html
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN docker-php-ext-install mysqli pdo pdo_mysql

# install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# install symfony cli
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/bin/symfony

COPY composer.* /var/www/html/
RUN composer install --no-interaction --no-dev --no-scripts

COPY . /var/www/html

EXPOSE 80

CMD ["symfony", "server:start", "--port", "80"]
