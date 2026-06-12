FROM node:24

RUN corepack enable

WORKDIR /app

# Copy dependency files first for better layer caching
COPY package.json pnpm-lock.yaml ./

RUN pnpm approve-builds --all
RUN pnpm install

# Copy the rest of the repository
COPY . .

EXPOSE 3000

CMD ["sh", "-c", "pnpm db:init && pnpm dev"]