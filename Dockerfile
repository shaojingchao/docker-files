FROM node:20-slim
USER node
WORKDIR /app
USER root
RUN apt update
RUN apt install -y libvips libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev libnss3 libxkbcommon0 libgtk-3-0 libgbm1 libasound2 chromium
USER node
RUN npm install -g pnpm@latest
RUN pnpm config set store-dir /cache/.pnpm-store
CMD ["node"]