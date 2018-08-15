FROM ulrich2002/alpine-laravel-docker:0.0.8

COPY . /var/www/

RUN composer install --no-interaction --prefer-dist --optimize-autoloader
