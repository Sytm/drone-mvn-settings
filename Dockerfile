FROM node:alpine

WORKDIR /plugin

COPY . /plugin

ENV NODE_ENV production

RUN npm ci

ENTRYPOINT [ "node", "/plugins/index.js" ]