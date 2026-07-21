cargo-install:
    cargo build --locked --bin bat
    PATH="$PWD/target/debug:$PATH" bash assets/create.sh
    cargo install --path . --locked --force
