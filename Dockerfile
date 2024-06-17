FROM node

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json


RUN cd app && npm install

COPY main.js main.js

ENTRYPOINT [ "node", "main.js" ]