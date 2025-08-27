FROM node:18.20.8
USER root
RUN corepack enable
RUN corepack install -g pnpm@8.15.9
RUN pnpm config set store-dir /cache/.pnpm-store
CMD ["node"]
