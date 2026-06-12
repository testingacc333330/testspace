FROM node:24

RUN corepack enable

WORKDIR /testspace
RUN pnpm install

EXPOSE 3000

CMD ["sh", "-c", "pnpm dev"]