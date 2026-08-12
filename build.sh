#!/bin/bash
set -e

echo "Installing Flutter dependencies..."
flutter pub get

echo "Building web version..."
flutter build web

echo "Build completed successfully!"
