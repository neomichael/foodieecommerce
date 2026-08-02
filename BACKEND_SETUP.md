# Backend Setup Guide

This project requires a local Laravel backend and a MySQL database. All required files are located in the `laravel_files_with_sql/` directory.

## 1. Components Found
- **SQL Database**: `laravel_files_with_sql/shopping.sql`
- **Laravel API**: `laravel_files_with_sql/mvszip/mvs.bslmeiyu.com/`
- **Admin Panel**: `laravel_files_with_sql/admin/`

## 2. Setup Instructions

### Database Setup
1. Open your MySQL management tool (e.g., phpMyAdmin, Workbench, or terminal).
2. Create a new database named **`shopping`**.
3. Import the `laravel_files_with_sql/shopping.sql` file into this database.

### API Backend Setup
1. Navigate to the Laravel project directory:
   `cd laravel_files_with_sql/mvszip/mvs.bslmeiyu.com/mvs.bslmeiyu.com/`
2. Open the `.env` file and update your database credentials:
   ```env
   DB_DATABASE=shopping
   DB_USERNAME=your_username
   DB_PASSWORD=your_password
   ```
3. Start the server:
   ```bash
   php artisan serve
   ```
   The server will usually start at **`http://127.0.0.1:8000`**.

## 3. Flutter Configuration

In `lib/helper/dependencies.dart`, update the `appBaseUrl` based on your device:

| Device Type | URL |
| :--- | :--- |
| **Android Emulator** | `http://10.0.2.2:8000` |
| **iOS Simulator** | `http://127.0.0.1:8000` |
| **Physical Device** | `http://[YOUR_PC_IP]:8000` |

> [!IMPORTANT]
> If using a physical Samsung device, ensure it is on the same Wi-Fi network as your computer and use your computer's local IP address.

## 4. Troubleshooting
If the app fails to fetch products:
- Verify the server is running.
- Ensure your database credentials in `.env` are correct.
- Check that the `appBaseUrl` in Flutter matches the server address.
