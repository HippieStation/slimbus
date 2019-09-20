FROM php:7.3.9
WORKDIR /usr/src/myapp
ENV DEBIAN_FRONTEND=noninteractive

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN docker-php-ext-install pdo pdo_mysql

CMD ["php", "-S", "0.0.0.0:8000", "-t", "/usr/src/myapp"]