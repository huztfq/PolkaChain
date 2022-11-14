#!/bin/bash
apt-get update
apt install build-essential
apt-get -y install clang
apt install --assume-yes git clang curl libssl-dev
apt install --assume-yes git clang curl libssl-dev llvm libudev-dev make protobuf-compiler
echo "1" | curl https://sh.rustup.rs -sSf | bash -s -- -y
export PATH="$HOME/.cargo/bin:$PATH"
rustc --version
rustup default stable
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup show
rustup +nightly show
rustup uninstall stable
rustup install stable
