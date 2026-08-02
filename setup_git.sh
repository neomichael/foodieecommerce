#!/bin/bash

# Configuration
USER_EMAIL="talentmichael123@gmail.com"
PROJECT_DIR="/home/neomichael/Documents/flutter_lab/foodDeliveryapp"

cd "$PROJECT_DIR"

echo "Initializing Git repository..."
git init

# Set local user config
git config user.email "$USER_EMAIL"

# Create a robust .gitignore
cat << 'EOF' > .gitignore
# Flutter-related
.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.packages
.pub-cache/
.pub/
/build/

# Android-related
**/android/**/generated/
**/android/local.properties
**/android/key.properties
*.iml
.gradle/
/local.properties

# iOS-related
**/ios/Flutter/.last_build_id
**/ios/Pods/
**/ios/.symlinks/
**/ios/Flutter/Generated.xcconfig
**/ios/Flutter/flutter_export_environment.sh

# Web-related
.web_assets/

# IDE-related
.idea/
.vscode/
*.iml
*.ipr
*.iws

# Sensitive files
*.unused
.env*

# OS-related
.DS_Store
thumbs.db
EOF

echo ".gitignore updated."

# Add all files
echo "Adding files to Git..."
git add .

# Initial commit
echo "Performing initial commit..."
git commit -m "Initial commit: Flutter project setup"

echo "echo "--------------------------------------------------------"
echo "Git setup complete locally."
echo "Next steps to upload to GitHub:"
echo "1. Go to GitHub and create a new repository named 'foodDeliveryapp'."
echo "2. Run the following commands in this terminal:"
echo "   git remote add origin https://github.com/talentmichael123/foodDeliveryapp.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo "--------------------------------------------------------"
