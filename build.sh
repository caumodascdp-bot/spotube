#!/bin/bash
set -e

echo "Downloading Flutter..."
git clone https://github.com/flutter/flutter.git --depth 1 flutter-sdk
export PATH="$PWD/flutter-sdk/bin:$PATH"

echo "Verifying Flutter installation..."
flutter --version

echo "Getting Flutter dependencies..."
flutter pub get

echo "Building web version..."
flutter build web

echo "Build completed successfully!"
