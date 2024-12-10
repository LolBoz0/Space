# syntax=docker/dockerfile:1
FROM node:lts
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g npm
RUN pnpm install
COPY . .
EXPOSE 3000
CMD ["pnpm", "start"]
