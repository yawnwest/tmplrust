FROM rust:1.73 as build

WORKDIR /app
ARG VERSION

COPY ./Cargo.toml ./Cargo.toml
COPY ./Cargo.lock ./Cargo.lock

COPY ./src ./src
RUN cargo build --release

FROM debian:12.2-slim

COPY --from=build /app/target/release/tmplrust /app/tmplrust

CMD ["/app/tmplrust"]
