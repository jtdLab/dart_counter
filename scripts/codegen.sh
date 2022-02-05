#!/bin/bash
# Go to working directory
cd ..
# Generate localization files
flutter pub run easy_localization:generate -S assets/languages -f keys -o locale_keys.g.dart
## Generate all other files
flutter pub run build_runner build --delete-conflicting-outputs