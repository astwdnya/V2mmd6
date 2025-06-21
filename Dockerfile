FROM debian:bullseye-slim

RUN apt update && apt install -y curl unzip socat nginx

# نصب V2Ray
COPY v2ray-linux-64.zip /tmp/v2ray-linux-64.zip

RUN unzip /tmp/v2ray-linux-64.zip -d /v2ray && \
    chmod +x /v2ray/v2ray /v2ray/v2ctl

COPY config.json /etc/v2ray/config.json
COPY default.conf /etc/nginx/sites-enabled/default

CMD service nginx start && /v2ray/v2ray -config=/etc/v2ray/config.json
