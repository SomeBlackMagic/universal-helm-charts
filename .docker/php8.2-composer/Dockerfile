FROM someblackmagic/universal-helm-charts:php8.2-fpm-latest
# These ARGs should be after FROM or they will be empty

ARG DOCKER_UID=1000
ARG DOCKER_GID=1000

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1
ENV COMPOSER_CACHE_DIR /.composer_cache
ENV COMPOSER_HOME /.composer

RUN set -eux \
    && apk add git unzip \
    # Installation
    && mkdir -p ${COMPOSER_CACHE_DIR} \
    && chown -R ${DOCKER_UID}:${DOCKER_GID} ${COMPOSER_CACHE_DIR} \
    && mkdir -p ${COMPOSER_HOME} \
    && chown -R ${DOCKER_UID}:${DOCKER_GID} ${COMPOSER_HOME} \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 \
    && chmod a+x /usr/local/bin/composer \
    && composer --version | grep -oE 'Composer version [.0-9]+' | grep -oE '2.' \
    && true
