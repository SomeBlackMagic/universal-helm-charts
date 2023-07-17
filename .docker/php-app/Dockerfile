FROM someblackmagic/universal-helm-charts:php8.2-composer-latest

WORKDIR /app

COPY src/php/composer.json /app/composer.json
#COPY src/php/composer.lock /app/composer.lock

RUN composer install --no-dev --optimize-autoloader

COPY src/php/ /app

RUN rm -rf /app/.docker

STOPSIGNAL SIGINT