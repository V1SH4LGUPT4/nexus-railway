FROM ubuntu:22.04

RUN apt update && apt install -y curl

RUN curl https://cli.nexus.xyz/ | sh

RUN /root/.nexus/bin/nexus-network register-user --wallet-address 0x76d387388BEa6B60CA6D1e97f446F7E26D39d313

CMD ["/root/.nexus/bin/nexus-network", "start", "--node-id", "38646528", "--headless", "--max-difficulty", "small", "--workers", "1"]
