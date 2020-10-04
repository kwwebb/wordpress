FROM wordpress:5.5.1-php7.4-apache

# Remove dangerous/hacker centric files
RUN apt-get update -y \
 && apt-get install unzip \
 && rm -f /var/www/html/license.txt \
 && rm -f /var/www/html/readme.html \
 && rm -rf /var/www/html/wp-content/themes/twentyseventeen \
 && rm -rf /var/www/html/wp-content/themes/twentynineteen \
 && rm -f /var/www/html/wp-content/plugins/hello.php \
 && rm -rf /var/www/html/wp-content/plugins/akismet \
 && curl https://downloads.wordpress.org/plugin/wpcore.zip -O  \
 && unzip wpcore.zip -d /var/www/html/wp-content/plugins \
 && rm -f /var/www/html/wpcore.zip

# Edit php.ini settings

# Remove all default themes, keep one fallback theme

# Remove default plugins

# Add WP-Core plugin