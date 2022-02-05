#!/bin/bash
# Go to working directory
cd ..
# Run tests with coverage
flutter test --coverage
# Remove generated files
lcov --remove coverage/lcov.info 'lib/generated/*' 'lib/injection.config.dart' 'lib/presentation/ios/router.gr.dart' 'lib/presentation/android/router.gr.dart' -o coverage/new_lcov.info
# Generate coverage report
genhtml coverage/new_lcov.info -o coverage/output/