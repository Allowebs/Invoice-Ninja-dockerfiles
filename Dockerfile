# Use the base image of Invoice Ninja
FROM invoiceninja/invoiceninja:5

# Set working directory
WORKDIR /var/www/app

# Copy custom storage and public directories
COPY ./storage /var/www/app/storage
COPY ./public /var/www/app/public

# Fix permissions
RUN chown -R www-data:www-data /var/www/app/storage /var/www/app/public && \
    chmod -R 775 /var/www/app/storage /var/www/app/public

# Run the default entrypoint
CMD ["php-fpm"]
