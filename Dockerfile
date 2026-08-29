FROM node:24-alpine

WORKDIR /app

COPY --chown=node:node package.json ./
COPY --chown=node:node app ./app

USER node

EXPOSE 3000

CMD ["npm", "start"]