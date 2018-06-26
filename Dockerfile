FROM ekidd/rust-musl-builder:1.26.0
WORKDIR /home/rust/src
COPY Cargo.* /home/rust/src/
COPY src /home/rust/src/src
RUN find
RUN cargo build --release

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=0 /home/rust/src/target/x86_64-unknown-linux-musl/release/mshello .
CMD ["./mshello"]
