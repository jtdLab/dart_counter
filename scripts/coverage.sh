#!/bin/bash
# Go to working directory
cd ../dart_counter
# Run tests with coverage
flutter test --coverage
# Remove generated files
lcov --remove coverage/lcov.info 'lib/generated/*' 'lib/injection.config.dart' 'lib/presentation/ios/router.gr.dart' 'lib/presentation/android/router.gr.dart' -o coverage/lcov.info
# Generate coverage report
genhtml coverage/lcov.info -o coverage/output/