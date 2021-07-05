FROM php:7.4-fpm

RUN apt-get update && apt-get install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
# WORKDIR /var/www

# Install extensions
RUN docker-php-ext-install pdo_mysql

# Add user for laravel application
# RUN groupadd -g 1000 www && \
# 	useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory contents
# COPY . /var/www

# Copy existing application directory permissions
# COPY --chown=www:www . /var/www

# Change current user to www
# USER www

# Expose port 9000 and start php-fpm server
# EXPOSE 9000