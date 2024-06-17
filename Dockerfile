FROM node

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN cd app && npm install

COPY main.js /app/main.js

ENTRYPOINT [ "node", "/app/main.js" ]