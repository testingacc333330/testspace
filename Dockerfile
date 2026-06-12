FROM node:24

RUN corepack enable

WORKDIR /app

RUN pnpm install

EXPOSE 3000

CMD ["sh", "-c", "pnpm dev"]