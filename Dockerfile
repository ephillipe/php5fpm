FROM php:5-fpm
# Install modules
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        php5-pgsql \
        libpq-dev \
        language-pack-pt-base \
        postgresql-client \
        libghc-postgresql-libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/include/postgresql/ \         
    && docker-php-ext-install zip pgsql pdo_pgsql
CMD ["php-fpm"]
