cargo-install:
    cargo build --locked --bin bat --profile release
    PATH="$PWD/target/debug:$PATH" bash assets/create.sh
    cargo install --path . --locked --force
