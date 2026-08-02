# Reinstallation Guide for New Ubuntu 26.04

Follow these concise steps to set up this project on a fresh Ubuntu installation.

## 1. Environment Setup
```bash
sudo apt update
sudo apt install mysql-server composer php-xml php-curl php-mysql php-mbstring php-zip unzip -y
sudo systemctl start mysql
```

## 2. Database Setup
```bash
sudo mysql -e "CREATE DATABASE laravel;"
# Import the cleaned data (excludes broken geometry fields)
sudo mysql laravel < laravel_files_with_sql/shopping_cleaned.sql
```

## 3. Backend Setup
```bash
cd laravel_files_with_sql/mvszip/mvs.bslmeiyu.com/mvs.bslmeiyu.com/
cp .env.example .env
# Important: Update DB_DATABASE, DB_USERNAME, and DB_PASSWORD in .env
composer install --ignore-platform-reqs
php artisan key:generate
php artisan serve --host=0.0.0.0 --port=8000
```

## 4. Flutter Setup
```bash
# Open a new terminal in the project root
flutter pub get
flutter run
```

> [!IMPORTANT]
> If your computer's local IP address changes, remember to update `BASE_URL` in `lib/utils/app_constants.dart`.
