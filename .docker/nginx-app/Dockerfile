FROM nginxinc/nginx-unprivileged:1.23-alpine
WORKDIR /app
STOPSIGNAL SIGTERM

COPY .docker/nginx-app/conf/default.conf /etc/nginx/conf.d/default.conf

COPY src/php/ /app