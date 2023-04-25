FROM debian:11.6-slim

ENV TZ "Asia/Shanghai"

RUN set -eux; \
    sed -i 's/deb.debian.org/mirrors.163.com/g' /etc/apt/sources.list; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        net-tools \
        iputils-ping \
        iproute2 \
        procps \
        ca-certificates \
        netcat \
        curl \
        less \
        neovim \
    ; \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]