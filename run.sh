#!/bin/bash
set -e

# Build parameters.yml
cat << EOF > /src/app/config/parameters.yml
parameters:
  database_driver: pdo_mysql
  database_host: ${DATABASE_HOST}
  database_port: ${DATABASE_PORT}
  database_name: ${DATABASE_NAME}
  database_user: ${DATABASE_USER}
  database_password: ${DATABASE_PASSWORD}
  locale: en
  secret: ThisTokenIsNotSoSecretChangeIt
EOF

php app/console cache:clear --env=prod
php app/console pim:install --env=prod

chown www-data:www-data /src -R
source /etc/apache2/envvars
exec apache2 -D FOREGROUND
