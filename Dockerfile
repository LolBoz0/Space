FROM node:lts
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm@10.9.2
RUN pnpm install
RUN pnpm --version
COPY . .
EXPOSE 3000
CMD ["pnpm", "start"]
