#!/bin/bash
set -e

echo "Downloading Flutter stable..."
git clone https://github.com/flutter/flutter.git --depth 1 -b stable flutter-sdk
export PATH="$PWD/flutter-sdk/bin:$PATH"

echo "Verifying Flutter installation..."
flutter --version

echo "Getting Flutter dependencies (web only)..."
flutter pub get --no-dev

echo "Building web version..."
flutter build web --release --no-tree-shake-icons

echo "Build completed successfully!"
