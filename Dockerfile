FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV DB_USER=sql123
ENV DB_PASSWORD=Haha123=
ENV DB_NAME=cloudrun_app
ENV DB_CONNECTION_NAME=udb-ti-24a1:us-west1:sql123
ENV NODE_ENV=production

EXPOSE 8080


