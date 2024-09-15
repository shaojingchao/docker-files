FROM node:20
USER root
RUN apt update
RUN apt install -y libvips libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev libnss3 libxkbcommon0 libgtk-3-0 libgbm1 libasound2 chromium
RUN corepack enable
RUN corepack install -g pnpm@9.1.4
RUN pnpm config set store-dir /cache/.pnpm-store
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*
CMD ["node"]