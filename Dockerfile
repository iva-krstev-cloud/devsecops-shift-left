FROM node:24-alpine

RUN apk upgrade --no-cache && \
    npm install -g npm@latest

WORKDIR /app

COPY --chown=node:node package.json ./
COPY --chown=node:node app ./app

USER node

EXPOSE 3000

CMD ["npm", "start"]