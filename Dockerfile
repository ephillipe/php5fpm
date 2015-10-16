FROM php:5-fpm
# Install modules
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        php5-pgsql \
    && docker-php-ext-install zip \\
    && docker-php-ext-install pgsql
CMD ["php-fpm"]
