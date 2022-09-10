#!/bin/bash

# get current dir
current_dir=$(pwd)

cd $1
flutter test --update-goldens
cd $current_dir