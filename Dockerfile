FROM php:8.3-apache

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
RUN composer install --no-interaction --no-scripts

COPY . /var/www/html

# configure for serving on apache
RUN a2enmod rewrite
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -i -e 's|/var/www/html|${APACHE_DOCUMENT_ROOT}|g' /etc/apache2/sites-available/000-default.conf
RUN sed -i -e 's|/var/www/html|${APACHE_DOCUMENT_ROOT}|g' /etc/apache2/apache2.conf

EXPOSE 80

CMD ["apache2-foreground"]
