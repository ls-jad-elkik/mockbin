FROM node:14-alpine

RUN mkdir -p /app
WORKDIR /app

COPY ./app.json .
COPY ./package.json .
COPY ./package-lock.json .
COPY ./server.js .
COPY ./README.md .
COPY ./bin/ ./bin/
COPY ./lib/ ./lib/
COPY ./src/ ./src/
COPY ./test ./test/

RUN npm ci

ENV MOCKBIN_PORT 8080
ENV MOCKBIN_QUIET false
ENV MOCKBIN_REDIS redis://redis:6379
# Can be set to "mockbin"
ENV NODE_DEBUG ""
EXPOSE 8080

ENTRYPOINT npm start
