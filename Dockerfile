FROM rust:latest

WORKDIR /app

RUN apt update && apt install -y git pkg-config libssl-dev

RUN git clone https://github.com/nexus-xyz/network-api.git .

RUN cargo build --release

CMD ["cargo", "run", "--release"]
