FROM node:20-slim

WORKDIR /app

COPY package.json .

COPY bun.lockb .

RUN npm install -g bun@latest && bun install

COPY . .

CMD ["bun", "run", "dev"]