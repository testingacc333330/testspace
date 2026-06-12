FROM node:24

RUN corepack enable

RUN pnpm install

EXPOSE 3000

WORKDIR /app

CMD ["sh", "-c", "pnpm dev"]