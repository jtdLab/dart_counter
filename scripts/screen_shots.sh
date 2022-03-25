#!/bin/bash
# Read all goldens images from widget tests
# and copy them into seperate output dir

# create output dir
mkdir -p screen_shots
# go to presentation dir in tests
cd test/presentation
# final all pngs and copy them to output dir
find . -type f -regex ".*\.png" -exec cp {} ../../screen_shots \;
