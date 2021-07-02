FROM nginx:alpine

# RUN set -x ; \
#   addgroup -g 82 -S www-data ; \
#   adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

# RUN addgroup -g 1000 -S www && \
# 	adduser -u 1000 -S www -G www

COPY ./config/nginx /etc/nginx
COPY . /var/www

# Set working directory
# WORKDIR /var/www

# Copy existing application directory permissions
# COPY --chown=www:www . /var/www

# Change current user to www
# USER www