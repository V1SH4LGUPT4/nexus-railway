FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y curl ca-certificates

RUN curl https://cli.nexus.xyz/ | sh

RUN mkdir -p /root/.nexus

CMD ["/root/.nexus/bin/nexus-network", "start", "--node-id", "38646528", "--headless", "--max-difficulty", "small"]
