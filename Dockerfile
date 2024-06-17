FROM node

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY main.js main.js

ENTRYPOINT [ "node", "main.js" ]