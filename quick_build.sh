#!/bin/bash

echo "Cleaning up workspace..."
rm -rf build

echo "Building website from source"
cd src
gutenberg build -o ../build 
cd ..