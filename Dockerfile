FROM node:22.21.1
USER root
# 安装 rsync 和 SSH 客户端
RUN apt-get update && \
    apt-get install -y \
    rsync \
    openssh-client && \
    rm -rf /var/lib/apt/lists/*
RUN corepack enable
RUN corepack install -g pnpm@10.18.3
RUN pnpm config set store-dir /cache/.pnpm-store
CMD ["node"]
