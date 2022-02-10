#!/bin/bash
# http://cloc.sourceforge.net/
echo 'PRODUCTION CODE'
# Go to production directory
cd ../dart_counter/lib
# Count lines
cloc . --exclude-dir=generated  --exclude-ext=freezed.dart,config.dart,g.dart

echo 'TEST CODE'
# Go to test directory
cd ../../dart_counter/test
# Count lines
cloc . 

echo 'PACKAGES'
# Go to test directory
cd ../../dart_counter/packages
# Count lines
cloc . --exclude-dir=generated  --exclude-ext=freezed.dart,config.dart,g.dart
