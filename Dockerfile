# syntax=docker/dockerfile:1
FROM node:lts
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["pnpm", "start"]
