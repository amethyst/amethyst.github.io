#!/bin/sh

# Script for Netlify
# Sets up dependencies + runs generate.sh

set -e

echo "Installing dependencies"

sudo apt install gcc
curl https://sh.rustup.rs -sSf | sh -s -- -y

. ~/.cargo/env

cargo install mdbook

echo "Generating website"

./generate.sh

cargo --version
mdbook --version

