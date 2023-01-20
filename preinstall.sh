#!/bin/bash

# Update package list
sudo apt-get update
sudo apt-get install net-tools
sudo apt install build-essentials
sudo apt-get -y install clang
# Install dependencies
sudo apt-get install -y build-essential pkg-config libssl-dev
sudo apt install --assume-yes git clang curl libssl-dev llvm libudev-dev make protobuf-compiler

# Install Rust and Cargo
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# Install Substrate
cargo install --git https://github.com/paritytech/substrate.git

# Verify installation
substrate --version

# Create a new substrate node
substrate-node-new my-node

# Change directory to the node's folder
cd my-node

# Build the node
cargo build --release
