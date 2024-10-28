FROM node:13-alpine

WORKDIR /src

COPY src/ /src

RUN npm install

EXPOSE 3000

CMD ["node", "src/server.js"]