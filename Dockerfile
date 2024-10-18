FROM node:20.18-alpine3.20

RUN apk update && apk upgrade && apk add bash

WORKDIR /vue-app

COPY package*.json ./

RUN npm install

COPY . ./

EXPOSE 5173

RUN npm run build