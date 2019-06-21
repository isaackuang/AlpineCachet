FROM isaackuang/openresty:1.13.6.2

RUN curl https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub -o /etc/apk/keys/php-alpine.rsa.pub && \
    echo "@php https://dl.bintray.com/php-alpine/v3.8/php-7.2" >> /etc/apk/repositories && \
    apk --no-cache --progress add \
    php7-cli@php php7-apcu@php php7-bcmath@php php7-dom@php php7-ctype@php \
    php7-curl@php php7-fpm@php \
    php7-gd@php php7-iconv@php php7-intl@php php7-redis@php \
    php7-json@php php7-mbstring@php php7-mcrypt@php php7-opcache@php \
    php7-openssl@php php7-pdo@php php7-pdo_pgsql@php \
    php7-posix@php php7-session@php \
    php7-soap@php php7-xml@php php7-zip@php

COPY Cachet-2.4 /var/www/html

COPY config /


