# Backend Installation & Troubleshooting History

This document provides a chronological summary of the steps taken to set up the local development environment for the "Foodie" project on Ubuntu.

## 1. Environment Preparation
- **PHP Installation**: Installed PHP 8.5.4 and essential extensions (`php-xml`, `php-curl`, `php-mysql`, etc.).
- **Composer**: Installed the PHP dependency manager to handle Laravel libraries.
- **MySQL**: Installed and started the MySQL server (`mysql-server`).
- **Firewall**: Opened port `8000` via `ufw` to allow external connections from the mobile device.

## 2. Laravel Backend Setup
- **Directory Discovery**: Located the backend source code in `laravel_files_with_sql/mvszip/mvs.bslmeiyu.com/`.
- **Dependency Management**: Resolved `vendor/autoload.php` errors by running `composer install --ignore-platform-reqs`.
- **Server Entry Point**: Manually created `server.php` in the Laravel root to enable the built-in PHP server functionality for `php artisan serve`.
- **App Configuration**: Updated the `.env` file with local database credentials and generated the application encryption key.

## 3. Database Migration & Troubleshooting
- **Database Creation**: Created the `laravel` database in MySQL.
- **Geometry Error (1416)**: Encountered an error while importing `shopping.sql` due to incompatible binary Polygon data in the `zones` table.
- **"Cleaning" Solution**: Generated `shopping_cleaned.sql` by removing the problematic binary data lines (1513-1514), allowing the rest of the critical data (products, orders, etc.) to import successfully.

## 4. Flutter Integration
- **Emulator Connectivity**: Configured `appBaseUrl` to `http://10.0.2.2:8000` for Android Emulator access.
- **Physical Device Connectivity**: Verified the computer's local IP (`192.168.2.40`) for testing on the Samsung SM A3460.
- **Network Listener**: Instructed the Laravel server to listen on all interfaces using `php artisan serve --host=0.0.0.0`.

## 5. Code Fixes
- **Token Initialization**: Resolved a `LateInitializationError` in `ApiClient` by initializing the `token` field in the constructor.
- **Model Typo**: Fixed a typo in `products_model.dart` where `json['product']` was used instead of `json['products']`.

---
> [!TIP]
> **Current Status**: Backend server is ready. Once the final `sudo mysql` import command is run by the user, the database will be fully populated.
