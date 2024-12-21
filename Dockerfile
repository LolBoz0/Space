FROM node:20.0.0
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml .
RUN npm install -g npm@latest
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
