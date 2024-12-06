FROM rust:1.82.0-slim

RUN cargo install mdbook

VOLUME [ "/ebook" ]

CMD ["mdbook", "serve", "/ebook", "-p", "8000", "-n", "0.0.0.0"]