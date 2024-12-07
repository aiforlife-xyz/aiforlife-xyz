#!/bin/bash

# Render the site.
quarto render

# Copy the site files to the web server directory.
sudo cp -r _site/* /var/www/html/aiforlife/

# Set correct permissions.
sudo chown -R www-data:www-data /var/www/html/aiforlife/
sudo chmod -R 755 /var/www/html/aiforlife/

# Reload Nginx.
sudo systemctl reload nginx
