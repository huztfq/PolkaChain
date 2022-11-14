sudo apt-get update
sudo apt install build-essential
sudo apt-get -y install clang
sudo apt install --assume-yes git clang curl libssl-dev
sudo apt install --assume-yes git clang curl libssl-dev llvm libudev-dev make protobuf-compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version
rustup default stable
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup show
rustup +nightly show
