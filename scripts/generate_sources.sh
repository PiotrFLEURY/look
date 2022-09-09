#!/bin/bash

# get current dir
current_dir=$(pwd)

cd $1
flutter pub run build_runner build --delete-conflicting-outputs
cd $current_dir