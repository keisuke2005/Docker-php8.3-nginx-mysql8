#!/bin/bash

# Composerを使用して依存関係をインストール
composer install --no-interaction --optimize-autoloader --no-dev

# Laravelの環境設定
php artisan key:generate
php artisan config:cache
php artisan migrate --force
php artisan db:seed --force

# Nginxを起動
exec /usr/bin/supervisord -n
