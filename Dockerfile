FROM node:lts
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g npm@<11.0.0-pre.1> \ && npm install -g pnpm
RUN pnpm install
COPY . .
EXPOSE 3000
CMD ["pnpm", "start"]
