FROM ubuntu:22.04

RUN apt update && apt install -y curl

RUN curl https://cli.nexus.xyz/ | sh

CMD ["/root/.nexus/bin/nexus-network", "start", "--headless", "--max-difficulty", "small_medium"]
