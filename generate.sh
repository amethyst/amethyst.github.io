#!/bin/bash

# Rebuilds the website, blog, book, and API documentation from scratch.
gutenberg_release="v0.3.4/gutenberg-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"

echo "Cleaning up workspace..."
rm -rf build
rm -rf amethyst

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

git clone https://github.com/amethyst/amethyst --branch master amethyst/master
cd amethyst/master

cargo doc --all;

echo "Compiling master branch book"
mdbook build book

cd ../../

echo "Moving '${branches[$i]}' branch documentation and book to /build/"
mkdir -p build/doc/master/
cp -r amethyst/master/target/doc/ build/doc/master/

mkdir -p build/book/master/
mv -f amethyst/master/book/book/* build/book/master/

# Alias master doc and book to develop for backwards comp
mkdir -p build/doc/develop
cp -r build/doc/master build/doc/develop
cp -r build/book/master build/book/develop

# Build latest tag
cd amethyst/master
LATEST_TAG=$(git describe --abbrev=0 --tags)

echo "Checking out tag $LATEST_TAG to build latest docs and bogok"
git checkout -q $LATEST_TAG

cargo doc --all;

echo "Compiling master branch book"
mdbook build book

cd ../../

echo "Moving latest release documentation and book to /build/"
mkdir -p build/doc/latest/
cp -r amethyst/master/target/doc/ build/doc/latest/

mkdir -p build/book/latest/
mv -f amethyst/master/book/book/* build/book/latest/

touch build/doc/latest/VERSION
echo "$LATEST_TAG" > build/doc/latest/VERSION

cd amethyst/master
for tag in $(git tag) 
do
    echo "Checking out tag $tag to build latest docs and book"
    git checkout -q $tag

    #cargo doc --all --no-deps;

    echo "Compiling master branch book"
    mdbook build book

    cd ../../

    # echo "Moving latest release documentation and book to /build/"
    # mkdir -p build/doc/latest/
    # cp -r amethyst/master/target/doc/ build/doc/latest/

    mkdir -p build/book/$tag/
    mv -f amethyst/master/book/book/* build/book/$tag/

    cd amethyst/master
done

# cd ../../
# echo "Cleaning up binaries"
# rm -rf build/amethyst/
