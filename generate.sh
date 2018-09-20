#!/bin/bash

# Rebuilds the website, blog, book, and API documentation from scratch.

branches=( master )
gutenberg_release="v0.3.4/gutenberg-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"

echo "Cleaning up workspace..."
rm -rf build

echo "Downloading gutenberg"
curl -L -o gutenberg.tar.gz https://github.com/Keats/gutenberg/releases/download/${gutenberg_release}
tar -xvf gutenberg.tar.gz -C ./ 
rm gutenberg.tar.gz

echo "Building website from source"
cd src
../gutenberg build -o ../build 
cd ..
rm gutenberg

echo "Deploying the 404 page"
cp build/404/index.html build/404.html
rm -rf build/404

echo "Recreating base folders (if needed)"
mkdir -p build/book/
mkdir -p build/doc/
mkdir -p amethyst/

echo "Installing dependencies"
cargo install-update --version || cargo install cargo-update;
mdbook --version || cargo install mdbook;
cargo install-update -a;

for (( i=0; i<${#branches[@]}; i++ ));
do
    echo "Generating '${branches[$i]}' branch docs"
    if [ -d amethyst/${branches[$i]} ]
    then
      cd amethyst/${branches[$i]}
      git fetch origin && git reset --hard origin/${branches[$i]}
      cargo update
    else
      git clone https://github.com/amethyst/amethyst --branch ${branches[$i]} amethyst/${branches[$i]}
      cd amethyst/${branches[$i]}
    fi

    cargo doc --all --no-deps;

    echo "Compiling '${branches[$i]}' branch book"
    mdbook build book

    cd ../../

    echo "Moving '${branches[$i]}' branch documentation and book to /build/"
    mkdir -p build/doc/${branches[$i]}/
    cp -r amethyst/${branches[$i]}/target/doc/ build/doc/${branches[$i]}/

    mkdir -p build/book/${branches[$i]}/
    mv -f amethyst/${branches[$i]}/book/book/* build/book/${branches[$i]}/
done

#echo "Cleaning up binaries"
#rm -r build/amethyst/
