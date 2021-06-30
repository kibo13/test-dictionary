# Laravel Application

> Laravel application for translating text by words according to a predefined dictionary

## Quick Start

```bash
# download or clone repository
git clone https://github.com/kibo13/test-dictionary.git

# install dependencies
composer install
npm install (npm i)

# copy file .env
copy .env.example .env

# generate a key
php artisan key:generate

# create a new mysql database via phpmyadmin or GUI

# import to created database file
static/glossary.sql

# database configuration
DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=database_name
DB_USERNAME=database_username
DB_PASSWORD=database_password

# run application
php artisan serve

```
