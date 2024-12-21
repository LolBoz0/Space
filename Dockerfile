FROM node:20.17.0
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g npm@11.0.0
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
