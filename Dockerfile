# Use the base image of Invoice Ninja
FROM invoiceninja/invoiceninja:5

# Set working directory
WORKDIR /var/www/app

# Ensure permissions are correctly set for the storage and public directories
RUN chown -R www-data:www-data /var/www/app/storage /var/www/app/public && \
    chmod -R 775 /var/www/app/storage /var/www/app/public

# Run the default entrypoint
CMD ["php-fpm"]
