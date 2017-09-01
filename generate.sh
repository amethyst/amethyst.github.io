#!/bin/bash

# Rebuilds the website, blog, book, and API documentation from scratch.

echo "Cleaning up workspace..."
rm -rf build amethyst cobalt.rs
mkdir build

echo "Compiling the book..."
cargo install mdbook
mdbook build amethyst/book

echo "Copying files over..."
cp -r amethyst/book/html/ build/book
cp -r amethyst/book/images/ build/book/images

#echo '<meta http-equiv="refresh" content="0; url=amethyst/" />' > web/doc/index.html

echo "Building website from source..."
cargo install cobalt-bin

cobalt build
