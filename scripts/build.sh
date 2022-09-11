#!/bin/bash

# This script is used to build the project.

# build look package first

cd look
flutter pub get
cd ..

cd look/example
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter build web
cd ../..

# build look_generator package then

cd look_generator
flutter pub get
cd ..

# build example app then

cd example
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter build web
cd ..

# echo success and exit

echo "Build success!"
exit 0