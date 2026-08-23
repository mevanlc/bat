cargo-install:
    cargo build --locked --bin bat --profile release
    PATH="$PWD/target/release:$PATH" bash assets/create.sh
    cargo install --path . --locked --force
