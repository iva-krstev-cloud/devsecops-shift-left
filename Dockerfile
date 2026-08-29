FROM node:24-alpine AS build

WORKDIR /app
COPY --chown=node:node package.json ./
COPY --chown=node:node app ./app

FROM node:24-alpine

RUN apk upgrade --no-cache && \
    rm -rf /usr/local/lib/node_modules/npm \
    /usr/local/bin/npm \
    /usr/local/bin/npx \
    /usr/local/lib/node_modules/corepack \
    /usr/local/bin/corepack \
    /opt/yarn-v*

WORKDIR /app
COPY --from=build --chown=node:node /app ./app

USER node
EXPOSE 3000
CMD ["node", "app/server.js"]