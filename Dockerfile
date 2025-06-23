FROM debian:stable-slim

RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

COPY v2ray-linux-64.zip /tmp/v2ray-linux-64.zip

RUN unzip /tmp/v2ray-linux-64.zip -d /v2ray && \
    chmod +x /v2ray/v2ray

COPY config.json /v2ray/config.json

CMD ["v2ray", "run", "-config", "/v2ray/config.json"]

