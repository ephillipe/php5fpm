FROM php:5-fpm
# Install modules
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
    && docker-php-ext-install zip
CMD ["php-fpm"]
