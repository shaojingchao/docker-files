FROM node:20-bookworm

RUN npx -y playwright@1.41.1 install --with-deps