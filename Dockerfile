FROM rust:latest

RUN apt update && apt install -y git pkg-config libssl-dev

WORKDIR /app

RUN git clone https://github.com/nexus-xyz/nexus-zkvm.git

WORKDIR /app/nexus-zkvm

RUN cargo build --release

CMD ["cargo", "run", "--release"]
