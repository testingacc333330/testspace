FROM node:24

RUN corepack enable

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --ignore-scripts

COPY . .

RUN pnpm rebuild

CMD ["pnpm", "dev"]