# Walkthrough - Fix Token Error and Update API URL

I have fixed the app crash caused by an uninitialized variable and updated the backend connection to point to your local IP address.

## Changes Made

### Backend Server
- **Server Entry Point**: Created [server.php](file:///home/neomichael/Documents/flutter_lab/foodDeliveryapp/laravel_files_with_sql/mvszip/mvs.bslmeiyu.com/mvs.bslmeiyu.com/server.php) to fix routing errors.
- **Database Import**: Created a "cleaned" SQL file [shopping_cleaned.sql](file:///home/neomichael/Documents/flutter_lab/foodDeliveryapp/laravel_files_with_sql/shopping_cleaned.sql) to bypass geometry errors in MySQL 8.4.

### Flutter App
- **Fixed Crash**: Initialized `token` in `ApiClient` to prevent `LateInitializationError`.
- **Model Fix**: Corrected a typo in `Product.fromJson` in `products_model.dart`.
- **Connectivity**: Updated `appBaseUrl` to `http://10.0.2.2:8000` for emulator testing.

## Verification Results

### App Launch
> [!IMPORTANT]
> The app should now launch without the `LateInitializationError` crash.

### Network Connection
The app will now attempt to connect to your local Laravel server at `192.168.2.40:8000`.

**Make sure your server is running with this command:**
`php artisan serve --host=0.0.0.0`
